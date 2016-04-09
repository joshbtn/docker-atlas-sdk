#!/bin/sh
TAG="latest"
if [ ! -z "$1" ]
  then
    TAG=$1
fi

docker build -t joshbtn/atlas-sdk:$TAG .
