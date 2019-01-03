#!/usr/bin/env bash
# Build the docker image
#

docker build -t pmav99/phusion-ansible:latest ./
docker build -t pmav99/phusion-ansible:0.11-1 ./
