#!/bin/bash

if [ $# -eq 2 ]; then
	DOCKERFILE=Dockerfile.vs-cmake
elif [ $# -eq 3 ]; then
	DOCKERFILE=Dockerfile.vs-cmake-python
else
	exit 1
fi

if [ "$1" == "2017" ]; then
	VS_VERSION=15
elif [ "$1" == "2019" ]; then
	VS_VERSION=16
else
	exit 1
fi

CMAKE_VERSION="$2"
PYTHON_VERSION="$3"

IMAGE_NAME="metthal/vs$1-cmake${CMAKE_VERSION}"
DOCKER_BUILD_ARGS=(--build-arg VS_VERSION=${VS_VERSION} --build-arg CMAKE_VERSION=${CMAKE_VERSION})
if [ ! -z "$PYTHON_VERSION" ]; then
	DOCKER_BUILD_ARGS[1]="VS_VERSION=$1"
	DOCKER_BUILD_ARGS+=(--build-arg PYTHON_VERSION=${PYTHON_VERSION})
	IMAGE_NAME="${IMAGE_NAME}-python${PYTHON_VERSION}"
fi

echo "Run this command:"
echo
echo "docker build ${DOCKER_BUILD_ARGS[@]} -t ${IMAGE_NAME} -f ${DOCKERFILE} ."
