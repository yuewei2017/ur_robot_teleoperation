execute_process(COMMAND "/home/dong/Project/robot_test/build/universal_robot/ur_driver/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/dong/Project/robot_test/build/universal_robot/ur_driver/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
