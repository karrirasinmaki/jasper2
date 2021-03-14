#!/bin/bash

# run docker machine
#
# building docker image
#   ./run.sh build
# 
# eq. open shell inside docker machine
#   ./run.sh sh
# 
# run specific image name (committed container for example)
#   ./run.sh image commit-123
#

image_name=jasper2
container_name=jasper2

force_run=0

if [ "$1" = "build" ]; then
  docker build -t $image_name .
  exit
fi

if [ "$1" = "remove" ]; then
  docker rm $container_name
  docker rmi $image_name
  exit
fi

if [ "$1" = "image" ]; then
  image_name=$2
  container_name="$2-container"
  shift 2
fi

if [ ! "$(docker ps -a | grep "$container_name$")" ]; then
  echo "Running $image_name..."
  docker run --name $container_name -v $(pwd)/:/work -it -p 3000:3000 -p 4000:4000 -p 5000:5000 -p 5001:5001 -p 9005:9005 $image_name $@
else
  echo "Starting $container_name..."
  docker start -i $container_name
fi

