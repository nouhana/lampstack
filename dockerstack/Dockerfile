FROM php:7.4.3-apache 
RUN chown -R $USER:$USER /var/www/html/
COPY ./dockerstack/conf/vhost.conf /etc/apache2/sites-available/000-default.conf  
COPY ./dockerstack/conf/apache.conf /etc/apache2/conf-available/docker-php.conf
RUN a2enconf docker-php
RUN docker-php-ext-install mysqli pdo pdo_mysql
