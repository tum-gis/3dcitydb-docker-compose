#!/usr/bin/env bash

# load config #################################################################
WD=$(pwd)
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
source $DIR/config.sh

# run docker containers #######################################################
cd $DIR
docker-compose config
docker-compose down
cd $PW
