################################################ 项目相关 ###################################################
cmake_minimum_required(VERSION 3.0.2)
project(rgb2cloud)

############################################### ROS相关功能实现 ###############################################
find_package(catkin REQUIRED COMPONENTS 
  cv_bridge
  std_msgs
  geometry_msgs
  pcl_conversions
  pcl_ros
  roscpp
  message_generation
)

#添加msg自定义消息文件
add_message_files(
    FILES
    point.msg
    area.msg
    pcArea.msg
    )

#添加srv自定义服务文件
add_service_files(
  FILES
  rgb2cloud.srv
 )

#添加依赖的消息类型
generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
 )

#声明联合编译为ros包 不然roslaunch和rosrun调不起
catkin_package(CATKIN_DEPENDS
    std_msgs
    geometry_msgs
    message_runtime
    )

 #########################################  源码、ui文件和头文件  ################################################
 set(SOURCES
     src/main.cpp
 )

 set(HEADERS
 )

 #加载头文件到环境中
 include_directories(
     include #当前目录的include
     ${catkin_INCLUDE_DIRS} #ros头文件
 )

 #源码编译为
 add_executable(rgb2cloud ${SOURCES} ${HEADERS}
 )
 #优先编译srv和msg文件
 add_dependencies(rgb2cloud ${PROJECT_NAME}_generate_messages_cpp)
 #链接所有动态链接库
 target_link_libraries(rgb2cloud  ${catkin_LIBRARIES})
