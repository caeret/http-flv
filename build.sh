#!/usr/bin/env bash

set -eou pipefail

HTTP_FLV_VERSION=1.2.6

cd nginx

docker build -t "${DOCKER_USERNAME}/${DOCKER_IMAGE_NAME}:${HTTP_FLV_VERSION}" .

echo "Publish image '${DOCKER_USERNAME}/${DOCKER_IMAGE_NAME}:${HTTP_FLV_VERSION}' to Docker Hub ..."
docker login -u "${DOCKER_USERNAME}" -p "${DOCKER_PASSWORD}"
docker push "${DOCKER_USERNAME}/${DOCKER_IMAGE_NAME}:${HTTP_FLV_VERSION}"

