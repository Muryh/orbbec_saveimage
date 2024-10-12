#include <form.h>
#include <ros/ros.h>
#include <QApplication>
int main(int argc, char **argv)
{
    QApplication app(argc, argv);
    ros::init(argc, argv, "ui_client");
    Form form;
    form.show();
    
    return app.exec();
}