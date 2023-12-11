#!/bin/bash

# build Docker image dari berkas Dockerfile (Kasjajobs)
docker build -t ghcr.io/udibaraid/karsajobs:latest .

# login ke Github Packages
echo $CR_PAT | docker login ghcr.io -u udibaraid --password-stdin

#push image ke Github Packages
docker push ghcr.io/udibaraid/karsajobs:latest