# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robot_test1: 3 messages, 0 services")

set(MSG_I_FLAGS "-Irobot_test1:/home/dong/Project/robot_test/src/robot_test1/msg;-Irosfalcon:/home/dong/Project/robot_test/src/rosfalcon/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robot_test1_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dong/Project/robot_test/src/robot_test1/msg/force.msg" NAME_WE)
add_custom_target(_robot_test1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_test1" "/home/dong/Project/robot_test/src/robot_test1/msg/force.msg" ""
)

get_filename_component(_filename "/home/dong/Project/robot_test/src/robot_test1/msg/falconForces.msg" NAME_WE)
add_custom_target(_robot_test1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_test1" "/home/dong/Project/robot_test/src/robot_test1/msg/falconForces.msg" ""
)

get_filename_component(_filename "/home/dong/Project/robot_test/src/robot_test1/msg/falconPos.msg" NAME_WE)
add_custom_target(_robot_test1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_test1" "/home/dong/Project/robot_test/src/robot_test1/msg/falconPos.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robot_test1
  "/home/dong/Project/robot_test/src/robot_test1/msg/force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_test1
)
_generate_msg_cpp(robot_test1
  "/home/dong/Project/robot_test/src/robot_test1/msg/falconForces.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_test1
)
_generate_msg_cpp(robot_test1
  "/home/dong/Project/robot_test/src/robot_test1/msg/falconPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_test1
)

### Generating Services

### Generating Module File
_generate_module_cpp(robot_test1
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_test1
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robot_test1_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robot_test1_generate_messages robot_test1_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dong/Project/robot_test/src/robot_test1/msg/force.msg" NAME_WE)
add_dependencies(robot_test1_generate_messages_cpp _robot_test1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dong/Project/robot_test/src/robot_test1/msg/falconForces.msg" NAME_WE)
add_dependencies(robot_test1_generate_messages_cpp _robot_test1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dong/Project/robot_test/src/robot_test1/msg/falconPos.msg" NAME_WE)
add_dependencies(robot_test1_generate_messages_cpp _robot_test1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_test1_gencpp)
add_dependencies(robot_test1_gencpp robot_test1_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_test1_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robot_test1
  "/home/dong/Project/robot_test/src/robot_test1/msg/force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_test1
)
_generate_msg_eus(robot_test1
  "/home/dong/Project/robot_test/src/robot_test1/msg/falconForces.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_test1
)
_generate_msg_eus(robot_test1
  "/home/dong/Project/robot_test/src/robot_test1/msg/falconPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_test1
)

### Generating Services

### Generating Module File
_generate_module_eus(robot_test1
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_test1
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robot_test1_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robot_test1_generate_messages robot_test1_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dong/Project/robot_test/src/robot_test1/msg/force.msg" NAME_WE)
add_dependencies(robot_test1_generate_messages_eus _robot_test1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dong/Project/robot_test/src/robot_test1/msg/falconForces.msg" NAME_WE)
add_dependencies(robot_test1_generate_messages_eus _robot_test1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dong/Project/robot_test/src/robot_test1/msg/falconPos.msg" NAME_WE)
add_dependencies(robot_test1_generate_messages_eus _robot_test1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_test1_geneus)
add_dependencies(robot_test1_geneus robot_test1_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_test1_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robot_test1
  "/home/dong/Project/robot_test/src/robot_test1/msg/force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_test1
)
_generate_msg_lisp(robot_test1
  "/home/dong/Project/robot_test/src/robot_test1/msg/falconForces.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_test1
)
_generate_msg_lisp(robot_test1
  "/home/dong/Project/robot_test/src/robot_test1/msg/falconPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_test1
)

### Generating Services

### Generating Module File
_generate_module_lisp(robot_test1
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_test1
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robot_test1_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robot_test1_generate_messages robot_test1_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dong/Project/robot_test/src/robot_test1/msg/force.msg" NAME_WE)
add_dependencies(robot_test1_generate_messages_lisp _robot_test1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dong/Project/robot_test/src/robot_test1/msg/falconForces.msg" NAME_WE)
add_dependencies(robot_test1_generate_messages_lisp _robot_test1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dong/Project/robot_test/src/robot_test1/msg/falconPos.msg" NAME_WE)
add_dependencies(robot_test1_generate_messages_lisp _robot_test1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_test1_genlisp)
add_dependencies(robot_test1_genlisp robot_test1_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_test1_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robot_test1
  "/home/dong/Project/robot_test/src/robot_test1/msg/force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_test1
)
_generate_msg_py(robot_test1
  "/home/dong/Project/robot_test/src/robot_test1/msg/falconForces.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_test1
)
_generate_msg_py(robot_test1
  "/home/dong/Project/robot_test/src/robot_test1/msg/falconPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_test1
)

### Generating Services

### Generating Module File
_generate_module_py(robot_test1
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_test1
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robot_test1_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robot_test1_generate_messages robot_test1_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dong/Project/robot_test/src/robot_test1/msg/force.msg" NAME_WE)
add_dependencies(robot_test1_generate_messages_py _robot_test1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dong/Project/robot_test/src/robot_test1/msg/falconForces.msg" NAME_WE)
add_dependencies(robot_test1_generate_messages_py _robot_test1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dong/Project/robot_test/src/robot_test1/msg/falconPos.msg" NAME_WE)
add_dependencies(robot_test1_generate_messages_py _robot_test1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_test1_genpy)
add_dependencies(robot_test1_genpy robot_test1_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_test1_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_test1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_test1
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET rosfalcon_generate_messages_cpp)
  add_dependencies(robot_test1_generate_messages_cpp rosfalcon_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_test1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_test1
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET rosfalcon_generate_messages_eus)
  add_dependencies(robot_test1_generate_messages_eus rosfalcon_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_test1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_test1
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET rosfalcon_generate_messages_lisp)
  add_dependencies(robot_test1_generate_messages_lisp rosfalcon_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_test1)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_test1\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_test1
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET rosfalcon_generate_messages_py)
  add_dependencies(robot_test1_generate_messages_py rosfalcon_generate_messages_py)
endif()
