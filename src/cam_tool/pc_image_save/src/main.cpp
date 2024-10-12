#include <fstream>
#include <iostream>
#include <ros/ros.h>
#include <sensor_msgs/PointCloud2.h>
#include <pc_image_save/savePcAndImage.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/io/ply_io.h>
#include <pcl/io/pcd_io.h>
#include <sensor_msgs/Image.h>
#include <cv_bridge/cv_bridge.h>
#include <opencv2/opencv.hpp>


typedef pcl::PointXYZ PointT;

static pcl::PCLPointCloud2 pcl_pc2;
static cv::Mat rgb,depth;

void rgbBC(const sensor_msgs::Image::ConstPtr&msg)
{

  cv_bridge::CvImageConstPtr pCvImage;// 声明一个CvImage指针的实例
  pCvImage = cv_bridge::toCvShare(msg, msg->encoding);//将ROS消息中的图象信息提取，生成新cv类型的图象，复制给CvImage指针
  pCvImage->image.copyTo(rgb);
  cv::cvtColor(rgb,rgb,cv::COLOR_BGR2RGB);
}

void depthBC(const sensor_msgs::Image::ConstPtr&msg)
{
  cv_bridge::CvImageConstPtr pCvImage;// 声明一个CvImage指针的实例
  pCvImage = cv_bridge::toCvShare(msg, msg->encoding);//将ROS消息中的图象信息提取，生成新cv类型的图象，复制给CvImage指针
  pCvImage->image.copyTo(depth);
}

void pointCloudCB(const sensor_msgs::PointCloud2::ConstPtr &msg )
{
    pcl_conversions::toPCL(*msg, pcl_pc2);
}

int pointCloudWrite(std::string fileName, std::string fileType,  pcl::PointCloud<PointT> cloud)
{
  if(fileType=="ply")
  {
    std::ofstream outFile(fileName+".ply");
    if (!outFile.is_open())
    {
        std::cerr << "Error opening "+fileName+" for writing." << std::endl;
        return -1;
    }
    outFile << "ply\n";
    outFile << "format ascii 1.0\n";
    outFile << "element vertex "<<cloud.size()<<"\n";
    outFile << "property float x\n";
    outFile << "property float y\n";
    outFile << "property float z\n";
    outFile << "end_header\n";

    for(unsigned int i=0;i<cloud.size();++i)
    {
      outFile <<cloud.points[i].x<<" "<<cloud.points[i].y<<" "<<cloud.points[i].z<<"\n";
    }
    outFile.close();
    return static_cast<int>(cloud.size());
  }
  else
  {
    return pcl::io::savePCDFileASCII(fileName+".pcd", cloud);
  }

}

bool imageWrite(std::string fileBaseName)
{
    bool ret1 = cv::imwrite(fileBaseName+".jpg",rgb);
    bool ret2 = cv::imwrite(fileBaseName+".png",depth);
    if(ret1&&ret2)
      return true;
    else
      return false;
}

bool savePointCloud(pc_image_save::savePcAndImageRequest &req,pc_image_save::savePcAndImageResponse &res)
{
  if(!req.fileBaseName.empty())
  {
    int ret;
    bool ret1;
    pcl::PointCloud<PointT>::Ptr cloud(new pcl::PointCloud<PointT>);
    pcl::fromPCLPointCloud2(pcl_pc2, *cloud);
    ret = pointCloudWrite(req.fileBaseName,req.PointCloudFileType,*cloud);
    ret1 = imageWrite(req.fileBaseName);
    if(ret<0||!ret1)
    {
      res.ok=false;
      return false;
    }
    res.ok=true;
    return true;
  }
  else
  {
    ROS_WARN("Point Cloud File Name is Empty");
    res.ok=false;
    return true;
  }
}

int main(int argc,char** argv)
{
  ros::init(argc,argv,"point_cloud_save");
  ros::NodeHandle n;
  ros::Subscriber sub;
  ros::ServiceServer ser;
  sub=n.subscribe("/camera/depth/points",10,pointCloudCB);
  ros::Subscriber subRgb = n.subscribe("/camera/color/image_raw",10,rgbBC);
  ros::Subscriber subDepth = n.subscribe("/camera/depth/image_raw",10,depthBC);
  ser=n.advertiseService("/Thi/savePointCloudAndImage",savePointCloud);

  ros::spin();
  return 0;
}
