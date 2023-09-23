# menggunakan docker image node versi 14
FROM node:14
# mengatur working directory default menjadi /app
WORKDIR /app
# menyalin semua file yang ada di working directory saat ini ke /app
COPY . .
# atur environment variabel 
ENV NODE_ENV=production DB_HOST=item-db
# install package menggunakan root privilege dan melakukan build
RUN npm install --production --unsafe-perm && npm run build
# expose port 8080
EXPOSE 8080
# command yang akan berjalan saat run container 
CMD ["npm", "start"]