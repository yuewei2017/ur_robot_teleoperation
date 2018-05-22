execute_process(COMMAND "/home/dong/Project/master/build/jsk_visualization-master/jsk_rqt_plugins/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/dong/Project/master/build/jsk_visualization-master/jsk_rqt_plugins/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
