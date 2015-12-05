#!/bin/bash

CMD="docker run \
       --name webstorm \
       --net "host" \
       --env DISPLAY=unix$DISPLAY \
       --user 1000:1000 \
       --volume /tmp/.X11-unix:/tmp/.X11-unix \
       --volume $HOME:/home/developer \
       kurron/docker-webstorm:latest"

echo $CMD
$CMD
