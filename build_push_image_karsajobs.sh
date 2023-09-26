#!/bin/bash
# build docker image untuk aplikasi backend karsajobs dan tag dengan tujuan repo, nama dan versi aplikasi
docker build -t ghcr.io/maplezs/karsajobs:latest .
# login github packages container registry
echo $CR_PAT | docker login ghcr.io -u maplezs --password-stdin
# push image ke github packages container registry
docker push ghcr.io/maplezs/karsajobs:latest