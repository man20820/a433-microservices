#!/bin/bash

# melakukan build image dengan tag menggunakan file Dockerfile
docker build -t order-service:latest .

# mengecek docker images yang berada di lokal
docker images

# melakukan perubahan tag agar sesuai dengan format github container registry / ghcr.io
docker tag order-service:latest ghcr.io/man20820/order-service:latest

# melakukan login ke github container registry
#echo $PASSWORD_GHCR | docker login ghcr.io -u man20820 --password-stdin

# melakukan push image ke github container registry
docker push ghcr.io/man20820/order-service:latest