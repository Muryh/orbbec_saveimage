#ifndef FORM_H
#define FORM_H

#include <QWidget>
#include <qobjectdefs.h>
#include <takephoto_service.h>
#include <vtkRenderWindow.h>
#include <pcl/visualization/pcl_visualizer.h>
#include <pcl/point_types.h>//各种格式的点的头文件
#include <pcl/io/pcd_io.h>
#include <pcl/io/ply_io.h>
#include <vtkGenericOpenGLRenderWindow.h>
#include <QImage>
#include <QPainter>
#include <QMouseEvent>
#include <vector>
#include <opencv2/opencv.hpp>
namespace Ui {
class Form;
}

class Form : public QWidget
{
  Q_OBJECT

public:
  explicit Form(QWidget *parent = nullptr);
  ~Form();

  QImage cvMatToQImage(const cv::Mat &inMat);

private:
  Ui::Form *ui;

  takephoto_service *takephoto;
  bool f,d;
  std::vector<QPoint> points;
  std::vector<std::vector<QPoint>> areas;
  std::string baseFileName = "/home/joo/2";

private slots:
  void takePhoto();
  void photoOK();
  void showCloud();
  void showRGB();
  void resetCloudViewer();


signals:
  void startSaveImagAndPc(std::string baseFileNmae);//保存图片
};

#endif // FORM_H
