#!/bin/bash

IMAGE_NAME="terraform-tools"
IMAGE_TAG=$1
docker build .
docker tag `docker images -q | head -n 1` ${IMAGE_NAME}:${IMAGE_TAG}