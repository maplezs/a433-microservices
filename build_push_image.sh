#!/bin/bash
# build docker image untuk aplikasi item-app dengan version v1
docker build -t item-app:v1 .
# melihat daftar images di lokal
docker images
# merubah tag image
docker tag item-app:v1 ghcr.io/maplezs/item-app:v1
# login github packages container registry
echo $CR_PAT | docker login ghcr.io -u maplezs --password-stdin
# push image ke github packages container registry
docker push ghcr.io/maplezs/item-app:v1