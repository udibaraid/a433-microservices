# Base image NodeJS v14
FROM node:14

# Working Directory
WORKDIR /app

# Menyalin Source Code Ke Working Directory
COPY . .

# MEnentukan Agar Aplikasi Berjalan Dalam Production Mode 
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Eksposing port yang digunakan aplikasi    
EXPOSE 8080

# Container diluncurkan dan menjalankan server
CMD ["npm","start"]