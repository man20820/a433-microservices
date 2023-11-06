# menggunakan nodejs versi 14
FROM node:14

# mengubah workdir ke /app
WORKDIR /app

# melakukan copy directory saat ini (mesin) ke directory workdir (/app di dalam image)
COPY . .

# install kebutuhan aplikasi & build
RUN npm install --production

# menginformasikan port 8080 yang digunakan
EXPOSE 3001

# menjalankan secara default ketika container berjalan
CMD [ "npm", "start" ]