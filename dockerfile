# Menggunakan image nginx ringan
FROM nginx:alpine

# Hapus konfigurasi default
RUN rm /etc/nginx/conf.d/default.conf

# Salin konfigurasi nginx custom
COPY default.conf /etc/nginx/conf.d/

# Salin semua file project ke root direktori Nginx
COPY . /usr/share/nginx/html

# Expose port default Nginx
EXPOSE 80
