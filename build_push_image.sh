#!/bin/bash

# membuat Docker image
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images 

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/udibaraid/item-app:v1

# Login melalui GitHub Packages
echo $PAT| docker login ghcr.io --username udibaraid --password-stdin

# Mengunggah image ke GitHub Packages
docker push ghcr.io/udibaraid/item-app:v1