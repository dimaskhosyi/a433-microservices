# Menggunakan base image seperti berikut
FROM node:18-alpine as builder

# Menentukan /app sebagai working directory
WORKDIR /app

# Menyalin berkas
COPY package*.json ./

# Menjalankan pemasangan "clean install"
RUN npm ci

# Menyalin berkas berformat ".js"
COPY ./*.js ./

# Mengekspos port 3001
EXPOSE 3001

# Menjalankan perintah "node index.js"
CMD [ "node", "index.js" ]