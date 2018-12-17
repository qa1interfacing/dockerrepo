#!/usr/bin/env sh
if [ "$#" -lt 1 ] || ! [ -f "docker-compose.$1.yml" ]; then
    echo "Usage: $0 <docker_project_name> <...arguments...>"
    exit 1
fi
PROJECT=$1
shift
ARGS=$*
docker-compose -p $PROJECT -f docker-compose.yml -f docker-compose.$PROJECT.yml $ARGS
