#!/bin/bash

IMAGE_NAME=$1
IMAGE_TAG=$2
docker build .
docker tag `docker images -q | head -n 1` ${IMAGE_NAME}:${IMAGE_TAG}
docker images