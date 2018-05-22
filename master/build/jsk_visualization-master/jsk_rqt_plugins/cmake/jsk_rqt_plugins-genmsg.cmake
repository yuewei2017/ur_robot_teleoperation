# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "jsk_rqt_plugins: 0 messages, 1 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(jsk_rqt_plugins_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dong/Project/master/src/jsk_visualization-master/jsk_rqt_plugins/srv/YesNo.srv" NAME_WE)
add_custom_target(_jsk_rqt_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jsk_rqt_plugins" "/home/dong/Project/master/src/jsk_visualization-master/jsk_rqt_plugins/srv/YesNo.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(jsk_rqt_plugins
  "/home/dong/Project/master/src/jsk_visualization-master/jsk_rqt_plugins/srv/YesNo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_rqt_plugins
)

### Generating Module File
_generate_module_cpp(jsk_rqt_plugins
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_rqt_plugins
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(jsk_rqt_plugins_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(jsk_rqt_plugins_generate_messages jsk_rqt_plugins_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dong/Project/master/src/jsk_visualization-master/jsk_rqt_plugins/srv/YesNo.srv" NAME_WE)
add_dependencies(jsk_rqt_plugins_generate_messages_cpp _jsk_rqt_plugins_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jsk_rqt_plugins_gencpp)
add_dependencies(jsk_rqt_plugins_gencpp jsk_rqt_plugins_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jsk_rqt_plugins_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(jsk_rqt_plugins
  "/home/dong/Project/master/src/jsk_visualization-master/jsk_rqt_plugins/srv/YesNo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_rqt_plugins
)

### Generating Module File
_generate_module_lisp(jsk_rqt_plugins
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_rqt_plugins
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(jsk_rqt_plugins_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(jsk_rqt_plugins_generate_messages jsk_rqt_plugins_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dong/Project/master/src/jsk_visualization-master/jsk_rqt_plugins/srv/YesNo.srv" NAME_WE)
add_dependencies(jsk_rqt_plugins_generate_messages_lisp _jsk_rqt_plugins_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jsk_rqt_plugins_genlisp)
add_dependencies(jsk_rqt_plugins_genlisp jsk_rqt_plugins_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jsk_rqt_plugins_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(jsk_rqt_plugins
  "/home/dong/Project/master/src/jsk_visualization-master/jsk_rqt_plugins/srv/YesNo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rqt_plugins
)

### Generating Module File
_generate_module_py(jsk_rqt_plugins
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rqt_plugins
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(jsk_rqt_plugins_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(jsk_rqt_plugins_generate_messages jsk_rqt_plugins_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dong/Project/master/src/jsk_visualization-master/jsk_rqt_plugins/srv/YesNo.srv" NAME_WE)
add_dependencies(jsk_rqt_plugins_generate_messages_py _jsk_rqt_plugins_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jsk_rqt_plugins_genpy)
add_dependencies(jsk_rqt_plugins_genpy jsk_rqt_plugins_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jsk_rqt_plugins_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_rqt_plugins)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jsk_rqt_plugins
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_rqt_plugins)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jsk_rqt_plugins
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rqt_plugins)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rqt_plugins\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rqt_plugins
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rqt_plugins
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jsk_rqt_plugins/.+/__init__.pyc?$"
  )
endif()
