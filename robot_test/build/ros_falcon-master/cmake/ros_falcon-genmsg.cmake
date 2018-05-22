# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_falcon: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iros_falcon:/home/dong/Project/robot_test/src/ros_falcon-master/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_falcon_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconSetPoint.msg" NAME_WE)
add_custom_target(_ros_falcon_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_falcon" "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconSetPoint.msg" ""
)

get_filename_component(_filename "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconPos.msg" NAME_WE)
add_custom_target(_ros_falcon_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_falcon" "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconPos.msg" ""
)

get_filename_component(_filename "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconForces.msg" NAME_WE)
add_custom_target(_ros_falcon_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_falcon" "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconForces.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ros_falcon
  "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconSetPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_falcon
)
_generate_msg_cpp(ros_falcon
  "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_falcon
)
_generate_msg_cpp(ros_falcon
  "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconForces.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_falcon
)

### Generating Services

### Generating Module File
_generate_module_cpp(ros_falcon
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_falcon
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_falcon_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_falcon_generate_messages ros_falcon_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconSetPoint.msg" NAME_WE)
add_dependencies(ros_falcon_generate_messages_cpp _ros_falcon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconPos.msg" NAME_WE)
add_dependencies(ros_falcon_generate_messages_cpp _ros_falcon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconForces.msg" NAME_WE)
add_dependencies(ros_falcon_generate_messages_cpp _ros_falcon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_falcon_gencpp)
add_dependencies(ros_falcon_gencpp ros_falcon_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_falcon_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ros_falcon
  "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconSetPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_falcon
)
_generate_msg_eus(ros_falcon
  "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_falcon
)
_generate_msg_eus(ros_falcon
  "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconForces.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_falcon
)

### Generating Services

### Generating Module File
_generate_module_eus(ros_falcon
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_falcon
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ros_falcon_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ros_falcon_generate_messages ros_falcon_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconSetPoint.msg" NAME_WE)
add_dependencies(ros_falcon_generate_messages_eus _ros_falcon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconPos.msg" NAME_WE)
add_dependencies(ros_falcon_generate_messages_eus _ros_falcon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconForces.msg" NAME_WE)
add_dependencies(ros_falcon_generate_messages_eus _ros_falcon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_falcon_geneus)
add_dependencies(ros_falcon_geneus ros_falcon_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_falcon_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ros_falcon
  "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconSetPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_falcon
)
_generate_msg_lisp(ros_falcon
  "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_falcon
)
_generate_msg_lisp(ros_falcon
  "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconForces.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_falcon
)

### Generating Services

### Generating Module File
_generate_module_lisp(ros_falcon
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_falcon
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_falcon_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_falcon_generate_messages ros_falcon_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconSetPoint.msg" NAME_WE)
add_dependencies(ros_falcon_generate_messages_lisp _ros_falcon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconPos.msg" NAME_WE)
add_dependencies(ros_falcon_generate_messages_lisp _ros_falcon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconForces.msg" NAME_WE)
add_dependencies(ros_falcon_generate_messages_lisp _ros_falcon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_falcon_genlisp)
add_dependencies(ros_falcon_genlisp ros_falcon_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_falcon_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ros_falcon
  "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconSetPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_falcon
)
_generate_msg_py(ros_falcon
  "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_falcon
)
_generate_msg_py(ros_falcon
  "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconForces.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_falcon
)

### Generating Services

### Generating Module File
_generate_module_py(ros_falcon
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_falcon
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_falcon_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_falcon_generate_messages ros_falcon_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconSetPoint.msg" NAME_WE)
add_dependencies(ros_falcon_generate_messages_py _ros_falcon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconPos.msg" NAME_WE)
add_dependencies(ros_falcon_generate_messages_py _ros_falcon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dong/Project/robot_test/src/ros_falcon-master/msg/falconForces.msg" NAME_WE)
add_dependencies(ros_falcon_generate_messages_py _ros_falcon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_falcon_genpy)
add_dependencies(ros_falcon_genpy ros_falcon_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_falcon_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_falcon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_falcon
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ros_falcon_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_falcon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_falcon
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ros_falcon_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_falcon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_falcon
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ros_falcon_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_falcon)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_falcon\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_falcon
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ros_falcon_generate_messages_py std_msgs_generate_messages_py)
endif()
