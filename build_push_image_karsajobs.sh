# Memberi tahu sistem, bahwa file dijalankan menggunakan shell
#!/bin/bash

# Melakukan build image docker file dengan nama todo-app dan tag v1
docker build . -t ghcr.io/dimaskhosyi/karsajobs:latest

# Menyimpan token github, dan melakukan login ke Github Packages
export CR_PAT=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
echo $CR_PAT | docker login ghcr.io -u dimaskhosyi --password-stdin

# Mengunggah image ke Github Packages
docker push ghcr.io/dimaskhosyi/karsajobs:latest