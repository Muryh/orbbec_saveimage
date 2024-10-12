使用方法：
1. 在项目根目录打开终端
2. 终端输入命令:`catkin_make`, 编译ros项目
3. 终端输入命令:`source devel/setup.bash`, 刷新环境
4. 相机开机在线
5. 终端输入命令：`roslaunch cam_tool_bringup cam_tool_bringup.launch`, 使用roslaunch启动所有节点
6. UI界面点击拍照，保存RGB和ply点云图像到地址："/home/pic"（地址可以更改，在“/Orbbec_saveImage/src/orbbec_saveimage/include/form.h”文件中， 39行，baseFileName）
