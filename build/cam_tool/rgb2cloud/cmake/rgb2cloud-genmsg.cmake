# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rgb2cloud: 3 messages, 1 services")

set(MSG_I_FLAGS "-Irgb2cloud:/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rgb2cloud_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/point.msg" NAME_WE)
add_custom_target(_rgb2cloud_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rgb2cloud" "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/point.msg" ""
)

get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/area.msg" NAME_WE)
add_custom_target(_rgb2cloud_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rgb2cloud" "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/area.msg" "rgb2cloud/point"
)

get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/pcArea.msg" NAME_WE)
add_custom_target(_rgb2cloud_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rgb2cloud" "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/pcArea.msg" "geometry_msgs/Point32"
)

get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/srv/rgb2cloud.srv" NAME_WE)
add_custom_target(_rgb2cloud_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rgb2cloud" "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/srv/rgb2cloud.srv" "rgb2cloud/pcArea:geometry_msgs/Point32:rgb2cloud/area:rgb2cloud/point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rgb2cloud
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgb2cloud
)
_generate_msg_cpp(rgb2cloud
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/area.msg"
  "${MSG_I_FLAGS}"
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgb2cloud
)
_generate_msg_cpp(rgb2cloud
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/pcArea.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgb2cloud
)

### Generating Services
_generate_srv_cpp(rgb2cloud
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/srv/rgb2cloud.srv"
  "${MSG_I_FLAGS}"
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/pcArea.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/area.msg;/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgb2cloud
)

### Generating Module File
_generate_module_cpp(rgb2cloud
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgb2cloud
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rgb2cloud_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rgb2cloud_generate_messages rgb2cloud_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/point.msg" NAME_WE)
add_dependencies(rgb2cloud_generate_messages_cpp _rgb2cloud_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/area.msg" NAME_WE)
add_dependencies(rgb2cloud_generate_messages_cpp _rgb2cloud_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/pcArea.msg" NAME_WE)
add_dependencies(rgb2cloud_generate_messages_cpp _rgb2cloud_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/srv/rgb2cloud.srv" NAME_WE)
add_dependencies(rgb2cloud_generate_messages_cpp _rgb2cloud_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rgb2cloud_gencpp)
add_dependencies(rgb2cloud_gencpp rgb2cloud_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rgb2cloud_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rgb2cloud
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgb2cloud
)
_generate_msg_eus(rgb2cloud
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/area.msg"
  "${MSG_I_FLAGS}"
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgb2cloud
)
_generate_msg_eus(rgb2cloud
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/pcArea.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgb2cloud
)

### Generating Services
_generate_srv_eus(rgb2cloud
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/srv/rgb2cloud.srv"
  "${MSG_I_FLAGS}"
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/pcArea.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/area.msg;/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgb2cloud
)

### Generating Module File
_generate_module_eus(rgb2cloud
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgb2cloud
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rgb2cloud_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rgb2cloud_generate_messages rgb2cloud_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/point.msg" NAME_WE)
add_dependencies(rgb2cloud_generate_messages_eus _rgb2cloud_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/area.msg" NAME_WE)
add_dependencies(rgb2cloud_generate_messages_eus _rgb2cloud_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/pcArea.msg" NAME_WE)
add_dependencies(rgb2cloud_generate_messages_eus _rgb2cloud_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/srv/rgb2cloud.srv" NAME_WE)
add_dependencies(rgb2cloud_generate_messages_eus _rgb2cloud_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rgb2cloud_geneus)
add_dependencies(rgb2cloud_geneus rgb2cloud_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rgb2cloud_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rgb2cloud
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgb2cloud
)
_generate_msg_lisp(rgb2cloud
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/area.msg"
  "${MSG_I_FLAGS}"
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgb2cloud
)
_generate_msg_lisp(rgb2cloud
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/pcArea.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgb2cloud
)

### Generating Services
_generate_srv_lisp(rgb2cloud
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/srv/rgb2cloud.srv"
  "${MSG_I_FLAGS}"
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/pcArea.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/area.msg;/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgb2cloud
)

### Generating Module File
_generate_module_lisp(rgb2cloud
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgb2cloud
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rgb2cloud_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rgb2cloud_generate_messages rgb2cloud_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/point.msg" NAME_WE)
add_dependencies(rgb2cloud_generate_messages_lisp _rgb2cloud_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/area.msg" NAME_WE)
add_dependencies(rgb2cloud_generate_messages_lisp _rgb2cloud_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/pcArea.msg" NAME_WE)
add_dependencies(rgb2cloud_generate_messages_lisp _rgb2cloud_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/srv/rgb2cloud.srv" NAME_WE)
add_dependencies(rgb2cloud_generate_messages_lisp _rgb2cloud_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rgb2cloud_genlisp)
add_dependencies(rgb2cloud_genlisp rgb2cloud_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rgb2cloud_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rgb2cloud
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgb2cloud
)
_generate_msg_nodejs(rgb2cloud
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/area.msg"
  "${MSG_I_FLAGS}"
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgb2cloud
)
_generate_msg_nodejs(rgb2cloud
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/pcArea.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgb2cloud
)

### Generating Services
_generate_srv_nodejs(rgb2cloud
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/srv/rgb2cloud.srv"
  "${MSG_I_FLAGS}"
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/pcArea.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/area.msg;/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgb2cloud
)

### Generating Module File
_generate_module_nodejs(rgb2cloud
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgb2cloud
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rgb2cloud_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rgb2cloud_generate_messages rgb2cloud_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/point.msg" NAME_WE)
add_dependencies(rgb2cloud_generate_messages_nodejs _rgb2cloud_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/area.msg" NAME_WE)
add_dependencies(rgb2cloud_generate_messages_nodejs _rgb2cloud_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/pcArea.msg" NAME_WE)
add_dependencies(rgb2cloud_generate_messages_nodejs _rgb2cloud_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/srv/rgb2cloud.srv" NAME_WE)
add_dependencies(rgb2cloud_generate_messages_nodejs _rgb2cloud_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rgb2cloud_gennodejs)
add_dependencies(rgb2cloud_gennodejs rgb2cloud_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rgb2cloud_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rgb2cloud
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgb2cloud
)
_generate_msg_py(rgb2cloud
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/area.msg"
  "${MSG_I_FLAGS}"
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgb2cloud
)
_generate_msg_py(rgb2cloud
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/pcArea.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgb2cloud
)

### Generating Services
_generate_srv_py(rgb2cloud
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/srv/rgb2cloud.srv"
  "${MSG_I_FLAGS}"
  "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/pcArea.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/area.msg;/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgb2cloud
)

### Generating Module File
_generate_module_py(rgb2cloud
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgb2cloud
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rgb2cloud_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rgb2cloud_generate_messages rgb2cloud_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/point.msg" NAME_WE)
add_dependencies(rgb2cloud_generate_messages_py _rgb2cloud_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/area.msg" NAME_WE)
add_dependencies(rgb2cloud_generate_messages_py _rgb2cloud_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/msg/pcArea.msg" NAME_WE)
add_dependencies(rgb2cloud_generate_messages_py _rgb2cloud_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joo/sifc/ros/Orbbec_saveImage/src/cam_tool/rgb2cloud/srv/rgb2cloud.srv" NAME_WE)
add_dependencies(rgb2cloud_generate_messages_py _rgb2cloud_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rgb2cloud_genpy)
add_dependencies(rgb2cloud_genpy rgb2cloud_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rgb2cloud_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgb2cloud)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgb2cloud
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rgb2cloud_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rgb2cloud_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgb2cloud)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgb2cloud
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rgb2cloud_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rgb2cloud_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgb2cloud)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgb2cloud
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rgb2cloud_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rgb2cloud_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgb2cloud)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgb2cloud
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rgb2cloud_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rgb2cloud_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgb2cloud)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgb2cloud\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgb2cloud
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rgb2cloud_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rgb2cloud_generate_messages_py geometry_msgs_generate_messages_py)
endif()
