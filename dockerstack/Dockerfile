FROM php:7.4.3-apache 
RUN chown -R $USER:$USER /var/www/html/ && \
    chown -R www-data:www-data /var/www/html/
COPY /conf/vhosts.conf /etc/apache2/sites-available/000-default.conf 
COPY /conf/apache.conf /etc/apache2/conf-available/docker-php.conf 
COPY /DocumentRoot /var/www/html
RUN a2enconf docker-php && \
    docker-php-ext-install mysqli pdo pdo_mysql
