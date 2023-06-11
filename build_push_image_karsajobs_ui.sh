# Mengenalkan ke sistem, bahwa file dijalankan menggunakan shell
#!/bin/bash

# Melakukan build image docker file dengan nama dam tag sebagai "ghcr.io/dimaskhosyi/karsajobs-ui:latest"
docker build . -t ghcr.io/dimaskhosyi/karsajobs-ui:latest

# Menyimpan token github, dan melakukan login ke Github Packages menggunakan tokens yang telah disimpan
export CR_PAT=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
echo $CR_PAT | docker login ghcr.io -u dimaskhosyi --password-stdin

# Mengunggah hasil image ke Github Packages
docker push ghcr.io/dimaskhosyi/karsajobs-ui:latest