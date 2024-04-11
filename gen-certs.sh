#!/bin/bash
cd "docker/ssl" || exit


_PWD=$(pwd)
docker build . -t ssl -f Dockerfile

docker run -v $_PWD/:/etc/ssl --env SERVER=${WP_SERVER_NAME} docker.io/library/openssl

