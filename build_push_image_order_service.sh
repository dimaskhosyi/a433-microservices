# Mengenalkan ke sistem, bahwa file dijalankan menggunakan shell
#!/bin/bash

# Melakukan build image docker file dengan nama dam tag sebagai "ghcr.io/dimaskhosyi/order-service:latest"
docker build . -t ghcr.io/dimaskhosyi/order-service:latest

# Menyimpan token github, dan melakukan login ke Github Packages menggunakan tokens yang telah disimpan
export CR_PAT=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
echo $CR_PAT | docker login ghcr.io -u dimaskhosyi --password-stdin

# Mengunggah hasil image ke Github Packages
docker push ghcr.io/dimaskhosyi/order-service:latest