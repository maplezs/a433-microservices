# menggunakan docker image node versi 14
FROM node:14-buster-slim
# mengatur working directory default menjadi /app
WORKDIR /app
# menyalin semua file yang ada di working directory saat ini ke /app
COPY . .
# atur environment variabel 
ENV PORT=3001
# install package menggunakan root privilege dan melakukan build
RUN npm install
# expose port 3001
EXPOSE 3001
# command yang akan berjalan saat run container 
CMD ["npm", "start"]