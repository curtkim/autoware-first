#!/bin/sh

XSOCK=/tmp/.X11-unix
XAUTH=/home/$USER/.Xauthority
SHARED_DIR=/home/autoware/.autoware
HOST_DIR=/home/$USER/.autoware

docker run --gpus all \
    -it --rm \
    --volume=$XSOCK:$XSOCK:rw \
    --volume=$XAUTH:$XAUTH:rw \
    --volume=$(pwd):$SHARED_DIR:rw \
    --env="XAUTHORITY=${XAUTH}" \
    --env="DISPLAY=${DISPLAY}" \
    --privileged -v /dev/bus/usb:/dev/bus/usb \
    --net=host \
    autoware/autoware:1.12.0-kinetic-cuda