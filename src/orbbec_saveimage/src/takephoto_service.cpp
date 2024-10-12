#include "takephoto_service.h"
#include <form.h>
extern std::vector<rgb2cloud::pcArea> globalListPcAreas;
takephoto_service::takephoto_service()
{
    n = new ros::NodeHandle;
    clientSavePcAndImage = n->serviceClient<pc_image_save::savePcAndImage>("/Thi/savePointCloudAndImage");
}

void takephoto_service::startSaveImagAndPc(std::string baseFileName)
{
    std::cout<< "开始拍照， start take photo!" <<std::endl;
    BaseFileName = baseFileName;
    QThread* thread = new QThread;
    connect(thread, &QThread::started, this, &takephoto_service::saveImagAndPc);
    moveToThread(thread);
    thread->start();
}

bool takephoto_service::saveImagAndPc()
{
    ros::service::waitForService("/Thi/savePointCloudAndImage", ros::Duration(10));

    if(!clientSavePcAndImage.waitForExistence())
    {
        ROS_ERROR("Service(/Thi/savePointCloudAndImage) topic not available");
        //emit  PhotoState(false);
        return false;
    }

    pc_image_save::savePcAndImage startSave;
    startSave.request.fileBaseName = BaseFileName;
    startSave.request.PointCloudFileType = "ply";

    if(clientSavePcAndImage.call(startSave))
    {
        if(startSave.response.ok)
        {
            emit signalShowCloud();
            return true;
        }
    }

    return false;
}
