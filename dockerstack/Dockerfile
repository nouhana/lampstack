FROM php:7.4.3-apache 
RUN chown -R $USER:$USER /var/www/html/
COPY apache2.conf /etc/apache2/apache2.conf
RUN docker-php-ext-install mysqli pdo pdo_mysql
