#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/dong/Project/robot_test/src/universal_robot/ur_driver"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/dong/Project/robot_test/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/dong/Project/robot_test/install/lib/python2.7/dist-packages:/home/dong/Project/robot_test/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/dong/Project/robot_test/build" \
    "/usr/bin/python" \
    "/home/dong/Project/robot_test/src/universal_robot/ur_driver/setup.py" \
    build --build-base "/home/dong/Project/robot_test/build/universal_robot/ur_driver" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/dong/Project/robot_test/install" --install-scripts="/home/dong/Project/robot_test/install/bin"
