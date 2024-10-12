# Install script for directory: /home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/joo/sifc/ros/Orbbec_saveImage/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera/msg" TYPE FILE FILES
    "/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/msg/DeviceInfo.msg"
    "/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/msg/Extrinsics.msg"
    "/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/msg/Metadata.msg"
    "/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/msg/IMUInfo.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera/srv" TYPE FILE FILES
    "/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/srv/GetBool.srv"
    "/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/srv/SetBool.srv"
    "/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/srv/GetCameraInfo.srv"
    "/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/srv/GetCameraParams.srv"
    "/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/srv/GetDeviceInfo.srv"
    "/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/srv/GetInt32.srv"
    "/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/srv/GetString.srv"
    "/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/srv/SetInt32.srv"
    "/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/srv/SetString.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera/cmake" TYPE FILE FILES "/home/joo/sifc/ros/Orbbec_saveImage/build/orbbec_camera/catkin_generated/installspace/orbbec_camera-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/joo/sifc/ros/Orbbec_saveImage/devel/include/orbbec_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/joo/sifc/ros/Orbbec_saveImage/devel/share/roseus/ros/orbbec_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/joo/sifc/ros/Orbbec_saveImage/devel/share/common-lisp/ros/orbbec_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/joo/sifc/ros/Orbbec_saveImage/devel/share/gennodejs/ros/orbbec_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/joo/sifc/ros/Orbbec_saveImage/devel/lib/python3/dist-packages/orbbec_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/joo/sifc/ros/Orbbec_saveImage/devel/lib/python3/dist-packages/orbbec_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/joo/sifc/ros/Orbbec_saveImage/build/orbbec_camera/catkin_generated/installspace/orbbec_camera.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera/cmake" TYPE FILE FILES "/home/joo/sifc/ros/Orbbec_saveImage/build/orbbec_camera/catkin_generated/installspace/orbbec_camera-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera/cmake" TYPE FILE FILES
    "/home/joo/sifc/ros/Orbbec_saveImage/build/orbbec_camera/catkin_generated/installspace/orbbec_cameraConfig.cmake"
    "/home/joo/sifc/ros/Orbbec_saveImage/build/orbbec_camera/catkin_generated/installspace/orbbec_cameraConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera" TYPE FILE FILES "/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera.so"
         RPATH ":/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/SDK/lib/x64")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/joo/sifc/ros/Orbbec_saveImage/devel/lib/liborbbec_camera.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera.so"
         OLD_RPATH ":/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/SDK/lib/x64:/opt/ros/noetic/lib:"
         NEW_RPATH ":/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/SDK/lib/x64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera_nodelet.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera_nodelet.so"
         RPATH ":/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/SDK/lib/x64")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/joo/sifc/ros/Orbbec_saveImage/devel/lib/liborbbec_camera_nodelet.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera_nodelet.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera_nodelet.so"
         OLD_RPATH ":/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/SDK/lib/x64:/opt/ros/noetic/lib:"
         NEW_RPATH ":/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/SDK/lib/x64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera_nodelet.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/orbbec_camera_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/orbbec_camera_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/orbbec_camera_node"
         RPATH ":/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/SDK/lib/x64")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera" TYPE EXECUTABLE FILES "/home/joo/sifc/ros/Orbbec_saveImage/devel/lib/orbbec_camera/orbbec_camera_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/orbbec_camera_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/orbbec_camera_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/orbbec_camera_node"
         OLD_RPATH ":/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/SDK/lib/x64:/opt/ros/noetic/lib:/home/joo/sifc/ros/Orbbec_saveImage/devel/lib:"
         NEW_RPATH ":/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/SDK/lib/x64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/orbbec_camera_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_devices_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_devices_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_devices_node"
         RPATH ":/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/SDK/lib/x64")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera" TYPE EXECUTABLE FILES "/home/joo/sifc/ros/Orbbec_saveImage/devel/lib/orbbec_camera/list_devices_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_devices_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_devices_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_devices_node"
         OLD_RPATH ":/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/SDK/lib/x64:/opt/ros/noetic/lib:/home/joo/sifc/ros/Orbbec_saveImage/devel/lib:"
         NEW_RPATH ":/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/SDK/lib/x64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_devices_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_depth_work_mode_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_depth_work_mode_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_depth_work_mode_node"
         RPATH ":/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/SDK/lib/x64")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera" TYPE EXECUTABLE FILES "/home/joo/sifc/ros/Orbbec_saveImage/devel/lib/orbbec_camera/list_depth_work_mode_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_depth_work_mode_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_depth_work_mode_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_depth_work_mode_node"
         OLD_RPATH ":/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/SDK/lib/x64:/opt/ros/noetic/lib:/home/joo/sifc/ros/Orbbec_saveImage/devel/lib:"
         NEW_RPATH ":/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/SDK/lib/x64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_depth_work_mode_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_camera_profile_mode_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_camera_profile_mode_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_camera_profile_mode_node"
         RPATH ":/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/SDK/lib/x64")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera" TYPE EXECUTABLE FILES "/home/joo/sifc/ros/Orbbec_saveImage/devel/lib/orbbec_camera/list_camera_profile_mode_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_camera_profile_mode_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_camera_profile_mode_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_camera_profile_mode_node"
         OLD_RPATH ":/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/SDK/lib/x64:/opt/ros/noetic/lib:/home/joo/sifc/ros/Orbbec_saveImage/devel/lib:"
         NEW_RPATH ":/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/SDK/lib/x64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_camera_profile_mode_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/orbbec_camera/" TYPE DIRECTORY FILES "/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/include")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/orbbec_camera/" TYPE DIRECTORY FILES "/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/SDK/include/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera" TYPE DIRECTORY FILES "/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/launch")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera" TYPE DIRECTORY FILES "/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/config")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera" TYPE FILE FILES "/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/nodelet_plugins.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera" TYPE FILE FILES "/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/LICENSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/" TYPE DIRECTORY FILES "/home/joo/sifc/ros/Orbbec_saveImage/src/orbbec_camera/SDK/lib/x64/" FILES_MATCHING REGEX "/[^/]*\\.so$" REGEX "/[^/]*\\.so\\.[^/]*$")
endif()

