cmake_minimum_required(VERSION 3.0.2)
project(orbbec_saveimage)



find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  message_generation
  pc_image_save
  rgb2cloud
  cv_bridge
)

generate_messages(
  DEPENDENCIES
  std_msgs
)

find_package(Qt5 COMPONENTS Core Widgets Sql REQUIRED)
find_package(PCL 1.13 REQUIRED)
find_package(VTK 8.2 REQUIRED)

catkin_package(

  INCLUDE_DIRS include
  LIBRARIES ${PROJECT_NAME}
)

include_directories(
# include
  ${catkin_INCLUDE_DIRS}

)

# 设置自动生成moc和ui
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)


set(INCKUDE_DIRS
  /usr/include/eigen3
  /usr/local/include/vtk-8.2
  /usr/local/include/pcl-1.13
)

include_directories(
  include
  ${INCLUDE_DIRS}
  ${catkin_INCLUDE_DIRS}
  /usr/include/eigen3
)

link_directories(
  /usr/local/lib
  ${PCL_LIBRARY_DIRS}
)

set(SOURCES
  src/form.cpp
  src/main.cpp
  src/takephoto_service.cpp
  src/form.ui
)

set(HEADERS
  include/form.h
  include/takephoto_service.h
)

add_executable(orbbec_save ${SOURCES} ${HEADERS})

target_link_libraries(orbbec_save
  ${catkin_LIBRARIES}
  Qt5::Widgets
  Qt5::Core
  ${PCL_LIBRARIES}
  ${VTK_LIBRARIES}
)
