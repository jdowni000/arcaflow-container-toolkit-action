#!/bin/bash

docker run \
    --rm \
    -e=IMAGE_NAME=$IMAGE_NAME \
    -e=IMAGE_TAG=$IMAGE_TAG \
    -e=GITHUB_USERNAME=$GITHUB_USERNAME \
    -e=GITHUB_PASSWORD=$GITHUB_PASSWORD \
    -e=GITHUB_NAMESPACE=$GITHUB_NAMESPACE \
    -e=QUAY_USERNAME=$QUAY_USERNAME \
    -e=QUAY_PASSWORD=$QUAY_PASSWORD \
    -e=QUAY_NAMESPACE=$QUAY_NAMESPACE \
    -e=QUAY_CUSTOM_NAMESPACE=$QUAY_CUSTOM_NAMESPACE \
    -e=QUAY_IMG_EXP=$QUAY_IMG_EXP \
    -e=BUILD_TIMEOUT=600 \
    --volume /var/run/docker.sock:/var/run/docker.sock:z \
    --volume $PWD:/github/workspace \
    ghcr.io/arcalot/arcaflow-plugin-image-builder:v0.3.0 build --build --push