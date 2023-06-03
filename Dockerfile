# 1 Mengambil image Node.js versi 14
FROM node:14

# 2 Menentukan working directory /app
WORKDIR /app

# 3 Menyalin seluruh source code
COPY . .

# 4 Menentukan aplikasi berjalan di lingkungan production dan menggunakan container bernama item-db
ENV NODE_ENV=production DB_HOST=item-db

# 5 Install dependencies untuk production dan melakukan build
RUN npm install --production --unsafe-perm && npm run build

# 6 Expose untuk port berjalan di 8080
EXPOSE 8080

# 7 Menjalankan perintah "npm start" saat kontainer diluncurkan
CMD ["npm", "start"]
