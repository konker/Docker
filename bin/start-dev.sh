#!/bin/bash

IMAGE="konker/serverless-dev:latest"

CONTAINER_NAME=$1
if [ -z "$CONTAINER_NAME" ]; then
    CONTAINER_NAME=${PWD##*/}
    echo "No container name specified, using '$CONTAINER_NAME'"
fi

docker run -itP --rm --name $CONTAINER_NAME -v "$PWD":/working -v "$HOME"/.aws:/root/.aws $IMAGE tmux -2
