# Use the official PHP image with Apache
FROM php:8.1-apache

# Enable PDO MySQL extension
RUN docker-php-ext-install pdo pdo_mysql

# Copy application files to the container
COPY src/ /var/www/html/

# Set permissions for the application files
RUN chown -R www-data:www-data /var/www/html/ \
    && chmod -R 755 /var/www/html/

# Expose port 80
EXPOSE 80
