#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: devc <enviroment name> <optional: docker run opts>"
    exit 1
fi

if [ "$1" = "list" ]; then
    echo "Available enviroments:"
    docker search --limit 100 "filipton/" | grep devc | cut -d ' ' -f1 | cut -d '/' -f2 | sed -e 's/-devc//'
    exit 1
fi

docker run $2 --net host --hostname "$1-devc" -v ./:/app --rm -it filipton/"$1"-devc:latest bash 
