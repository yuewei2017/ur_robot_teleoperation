# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cartesian_state_msgs: 1 messages, 0 services")

set(MSG_I_FLAGS "-Icartesian_state_msgs:/home/dong/Project/robot_test/src/ridgeback_ur5_controller-master/cartesian_state_msgs/msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cartesian_state_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dong/Project/robot_test/src/ridgeback_ur5_controller-master/cartesian_state_msgs/msg/PoseTwist.msg" NAME_WE)
add_custom_target(_cartesian_state_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cartesian_state_msgs" "/home/dong/Project/robot_test/src/ridgeback_ur5_controller-master/cartesian_state_msgs/msg/PoseTwist.msg" "geometry_msgs/Point:geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Twist"
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cartesian_state_msgs
  "/home/dong/Project/robot_test/src/ridgeback_ur5_controller-master/cartesian_state_msgs/msg/PoseTwist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cartesian_state_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(cartesian_state_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cartesian_state_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cartesian_state_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cartesian_state_msgs_generate_messages cartesian_state_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dong/Project/robot_test/src/ridgeback_ur5_controller-master/cartesian_state_msgs/msg/PoseTwist.msg" NAME_WE)
add_dependencies(cartesian_state_msgs_generate_messages_cpp _cartesian_state_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cartesian_state_msgs_gencpp)
add_dependencies(cartesian_state_msgs_gencpp cartesian_state_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cartesian_state_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cartesian_state_msgs
  "/home/dong/Project/robot_test/src/ridgeback_ur5_controller-master/cartesian_state_msgs/msg/PoseTwist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cartesian_state_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(cartesian_state_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cartesian_state_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cartesian_state_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cartesian_state_msgs_generate_messages cartesian_state_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dong/Project/robot_test/src/ridgeback_ur5_controller-master/cartesian_state_msgs/msg/PoseTwist.msg" NAME_WE)
add_dependencies(cartesian_state_msgs_generate_messages_eus _cartesian_state_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cartesian_state_msgs_geneus)
add_dependencies(cartesian_state_msgs_geneus cartesian_state_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cartesian_state_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cartesian_state_msgs
  "/home/dong/Project/robot_test/src/ridgeback_ur5_controller-master/cartesian_state_msgs/msg/PoseTwist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cartesian_state_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(cartesian_state_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cartesian_state_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cartesian_state_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cartesian_state_msgs_generate_messages cartesian_state_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dong/Project/robot_test/src/ridgeback_ur5_controller-master/cartesian_state_msgs/msg/PoseTwist.msg" NAME_WE)
add_dependencies(cartesian_state_msgs_generate_messages_lisp _cartesian_state_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cartesian_state_msgs_genlisp)
add_dependencies(cartesian_state_msgs_genlisp cartesian_state_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cartesian_state_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cartesian_state_msgs
  "/home/dong/Project/robot_test/src/ridgeback_ur5_controller-master/cartesian_state_msgs/msg/PoseTwist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cartesian_state_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(cartesian_state_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cartesian_state_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cartesian_state_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cartesian_state_msgs_generate_messages cartesian_state_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dong/Project/robot_test/src/ridgeback_ur5_controller-master/cartesian_state_msgs/msg/PoseTwist.msg" NAME_WE)
add_dependencies(cartesian_state_msgs_generate_messages_py _cartesian_state_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cartesian_state_msgs_genpy)
add_dependencies(cartesian_state_msgs_genpy cartesian_state_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cartesian_state_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cartesian_state_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cartesian_state_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(cartesian_state_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cartesian_state_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cartesian_state_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(cartesian_state_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cartesian_state_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cartesian_state_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(cartesian_state_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cartesian_state_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cartesian_state_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cartesian_state_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(cartesian_state_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
