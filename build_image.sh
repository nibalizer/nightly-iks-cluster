#!/bin/bash

cd docker_image

docker build --no-cache -t nibalizer/alpine-ibmcloudcli .
docker push nibalizer/alpine-ibmcloudcli
