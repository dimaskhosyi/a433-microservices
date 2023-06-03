# Memberi tahu sistem, bahwa file dijalankan menggunakan shell
#!/bin/bash

# Melakukan build image docker file dengan nama todo-app dan tag v1
docker build . -t todo-app:v1

# Melakukan list images tersedia
docker images

# Merubah tagname agar sesuai dengan format di Github Packages
docker tag todo-app:v1 ghcr.io/dimaskhosyi/todo-app:v1

# Menyimpan token github, dan melakukan login ke Github Packages
export CR_PAT=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
echo $CR_PAT | docker login ghcr.io -u dimaskhosyi --password-stdin

# Mengunggah image ke Github Packages
docker push ghcr.io/dimaskhosyi/todo-app:v1