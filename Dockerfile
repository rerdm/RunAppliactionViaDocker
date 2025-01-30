# Use an official PHP + Nginx image
FROM php:8.2-fpm-alpine

# Install necessary PHP extensions
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Set working directory
WORKDIR /var/www/html

# Copy application files to the container
COPY . .

# COPY index.html /usr/share/nginx/html/
# COPY css/style.css /usr/share/nginx/html/
# COPY img/ /usr/share/nginx/html/imgs/

# Port 80 freigeben
EXPOSE 80
