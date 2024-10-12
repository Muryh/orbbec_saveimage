#ifndef TAKEPHOTO_SERVICE_H
#define TAKEPHOTO_SERVICE_H

#include <QObject>
#include <QThread>
#include <QPoint>
#include <qobjectdefs.h>
#include <ros/ros.h>
#include <rgb2cloud/rgb2cloud.h>
#include <pc_image_save/savePcAndImage.h>
#include <vector>

class takephoto_service : public QObject
{
    Q_OBJECT

public:
    takephoto_service();

private:
    ros::NodeHandle *n;
    ros::ServiceClient clientRgb2cloud;
    ros::ServiceClient clientSavePcAndImage;
    std::vector<std::vector<QPoint>> Areas;
    std::string BaseFileName;

public slots:
    bool saveImagAndPc();
    void startSaveImagAndPc(std::string baseFileName);

signals:
    void signalShowCloud();

};

#endif 
