#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: devc <enviroment name>"
    exit 1
fi

docker run --net host --hostname "$1-devc" -v ./:/app --rm -it filipton/"$1"-devc:latest bash 
