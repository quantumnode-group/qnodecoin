#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-qnodecoinpay/qnodecoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/qnodecoind docker/bin/
cp $BUILD_DIR/src/qnodecoin-cli docker/bin/
cp $BUILD_DIR/src/qnodecoin-tx docker/bin/
strip docker/bin/qnodecoind
strip docker/bin/qnodecoin-cli
strip docker/bin/qnodecoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
