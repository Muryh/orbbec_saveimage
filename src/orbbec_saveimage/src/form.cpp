#include "form.h"
#include "takephoto_service.h"
#include "ui_form.h"
#include <qobject.h>
#include <qpushbutton.h>
#include <QMessageBox>
#include "QFileDialog"


boost::shared_ptr<pcl::visualization::PCLVisualizer> view;

Form::Form(QWidget *parent) :
  QWidget(parent),
  ui(new Ui::Form),
  takephoto(new takephoto_service)
{
  ui->setupUi(this);
//  QObject::connect(ui->BT_takePhoto, &QPushButton::clicked, this, &Form::takePhoto);
  QObject::connect(ui->BT_takePhoto, &QPushButton::clicked, this, &Form::showCloud);
  QObject::connect(ui->BT_takePhoto, &QPushButton::clicked, this, &Form::showRGB);


  QObject::connect(this, &Form::startSaveImagAndPc, takephoto, &takephoto_service::startSaveImagAndPc);
  QObject::connect(takephoto, &takephoto_service::signalShowCloud, this, &Form::photoOK);

  //vtkSmartPointer vtk智能指针
  vtkSmartPointer<vtkRenderer> renderer = vtkSmartPointer<vtkRenderer>::New();//渲染器
  vtkSmartPointer<vtkGenericOpenGLRenderWindow> renderWindow = vtkSmartPointer<vtkGenericOpenGLRenderWindow>::New();//一般的opengl渲染窗口
  renderWindow->AddRenderer(renderer);
  view.reset(new pcl::visualization::PCLVisualizer(renderer,renderWindow,"viewer",false));

  ui->openGLWidget->SetRenderWindow(view->getRenderWindow());
  view->setupInteractor(ui->openGLWidget->GetInteractor(), ui->openGLWidget->GetRenderWindow());

  ui->openGLWidget->update();
}

Form::~Form()
{
  delete ui;
}

QImage Form::cvMatToQImage(const cv::Mat &inMat)
{
  switch(inMat.type())
  {
      // 8-bit, 4 channel
      case CV_8UC4:
      {
          QImage image(inMat.data, inMat.cols, inMat.rows, static_cast<int>(inMat.step), QImage::Format_ARGB32);
          return image.copy();
      }

      // 8-bit, 3 channel
      case CV_8UC3:
      {
          QImage image(inMat.data, inMat.cols, inMat.rows, static_cast<int>(inMat.step), QImage::Format_RGB888);
          return image.rgbSwapped();
      }

      default:
          std::cout << "Unsupported image type" << std::endl;
          break;
  }

  return QImage();
}

void Form::takePhoto()
{
  emit startSaveImagAndPc(baseFileName);
  f = true;
}

void Form::photoOK()
{

  QString qBaseFileName = QString::fromStdString(baseFileName);
  QMessageBox::information(this, "提示", "已保存点云到位置：" + qBaseFileName);

}

void Form::showCloud()
{
  resetCloudViewer();
  pcl::PointCloud<pcl::PointXYZ>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZ>());//创建点云指针
  pcl::io::loadPLYFile(baseFileName + ".ply", *cloud);
  pcl::visualization::PointCloudColorHandlerGenericField<pcl::PointXYZ> fileColor(cloud, "y");
  view->addPointCloud<pcl::PointXYZ>(cloud, fileColor, "color");
  view->resetCamera();
  ui->openGLWidget->update();
  ui->openGLWidget->GetRenderWindow()->Render();
}

void Form::showRGB()
{
  if(f)
  {
      points.clear();
      // 读取图像
      cv::Mat cvImage = cv::imread(baseFileName + ".jpg"); // 替换为实际的图像路径

      // 将OpenCV图像转换为QImage，并显示在QLabel中
      QImage qImage = cvMatToQImage(cvImage);
      ui->Lbl_picture->setPixmap(QPixmap::fromImage(qImage));

      if(d)
      {
          // 安装鼠标事件过滤器
          ui->Lbl_picture->installEventFilter(this);
          d = false;
      }

      f = false;
  }

}

void Form::resetCloudViewer()
{
  view->removeAllPointClouds(); // 移除所有点云
  view->removeAllShapes(); // 移除所有形状（如果有）
  view->resetCamera(); // 重置相机
  ui->openGLWidget->update(); // 更新显示窗口
  ui->openGLWidget->GetRenderWindow()->Render(); // 渲染窗口
}
