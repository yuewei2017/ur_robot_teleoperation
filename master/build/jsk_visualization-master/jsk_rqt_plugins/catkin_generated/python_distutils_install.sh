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

echo_and_run cd "/home/dong/Project/master/src/jsk_visualization-master/jsk_rqt_plugins"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/dong/Project/master/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/dong/Project/master/install/lib/python2.7/dist-packages:/home/dong/Project/master/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/dong/Project/master/build" \
    "/usr/bin/python" \
    "/home/dong/Project/master/src/jsk_visualization-master/jsk_rqt_plugins/setup.py" \
    build --build-base "/home/dong/Project/master/build/jsk_visualization-master/jsk_rqt_plugins" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/dong/Project/master/install" --install-scripts="/home/dong/Project/master/install/bin"
