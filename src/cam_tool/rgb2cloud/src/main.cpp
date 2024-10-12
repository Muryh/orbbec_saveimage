#include <ros/ros.h>
#include <opencv2/opencv.hpp>
#include <sensor_msgs/Image.h>
#include <cv_bridge/cv_bridge.h>
#include <rgb2cloud/rgb2cloud.h>
#include <sensor_msgs/CameraInfo.h>

#include <pcl/point_types.h>
#include <pcl/conversions.h>
#include <pcl/PCLPointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>


static bool isKEmpty = true;
static double K[9]={0};
//     [fx  0 cx]
// K = [ 0 fy cy]
//     [ 0  0  1]
bool areAlmostEqual(float a, float b, float epsilon = static_cast<float>(1e-5))
{
    return std::fabs(a - b) < epsilon;
}

bool rgb2cloudBC(rgb2cloud::rgb2cloudRequest&req,rgb2cloud::rgb2cloudResponse&res)
{
    if(req.areaNum>0)
    {
        if(!isKEmpty)
        {
            cv::Mat depth = cv::imread( req.rgbBaseFileName+".png",cv::IMREAD_UNCHANGED);
            sensor_msgs::ImagePtr rosDepth = cv_bridge::CvImage(std_msgs::Header(),"16UC1",depth).toImageMsg();

            int width = static_cast<int>(rosDepth->width);
            int heigh = static_cast<int>(rosDepth->height);
            unsigned short *depth_data = reinterpret_cast<unsigned short*>(&rosDepth->data[0]);

            for (unsigned long i=0;i<static_cast<unsigned long>(req.areaNum);i++)
            {
                float averX =0;
                float averY =0;
                for (unsigned long j=0;j<req.listAreas[i].listPoints.size();j++)
                {
                    averX+=req.listAreas[i].listPoints[j].x;
                    averY+=req.listAreas[i].listPoints[j].y;
                }
                averX=averX/req.listAreas[i].listPoints.size();
                averY=averY/req.listAreas[i].listPoints.size();

                rgb2cloud::pcArea pcArea;
                for (unsigned long j=0;j<req.listAreas[i].listPoints.size();j++)
                {
                    float x, y, z;
                    int ux=req.listAreas[i].listPoints[j].x;
                    int uy=req.listAreas[i].listPoints[j].y;
                    z = static_cast<float>(*(depth_data + uy*width + ux));
                    while (areAlmostEqual(static_cast<float>(z),0))
                    {
                        if(ux<averX)
                        {
                            ux--;
                        }
                        else
                        {
                            ux++;
                        }
                        if(uy<averY)
                        {
                            uy--;
                        }
                        else
                        {
                            uy++;
                        }
                        if(ux>width||ux<0||uy>heigh||uy<0)
                        {
                            res.ok=false;
                            return true;
                        }
                        z = static_cast<float>(*(depth_data + uy*width + ux));
                    }

                    if(!areAlmostEqual(static_cast<float>(z),0))
                    {
                        x = z *static_cast<float>((ux - K[2]) / K[0]);
                        y = z *static_cast<float>((uy - K[5]) / K[4]);
                        geometry_msgs::Point32 p;
                        p.x=x;
                        p.y=y;
                        p.z=z;
                        pcArea.listPcPoint.push_back(p);
                    }
                }
                res.listPcAreas.push_back(pcArea);
            }
        }
    }
    res.ok=true;
    return true;
}
void camera_info_callback(const sensor_msgs::CameraInfoConstPtr &camera_info_msg)
{
    if(isKEmpty)
    {
        for(int i=0; i<9; i++)
        {
            K[i] = camera_info_msg->K[static_cast<unsigned long>(i)];
        }
        isKEmpty = false;
    }
}
int main(int argc,char** argv)
{
    ros::init(argc,argv,"rgb2cloud");
    ros::NodeHandle n;
    ros::ServiceServer serRgb2Cloud = n.advertiseService("/Thi/rgb2cloud",rgb2cloudBC);
    ros::Subscriber sub_cmara_info = n.subscribe("/camera/depth/camera_info", 1, camera_info_callback);
    ros::spin();
}
