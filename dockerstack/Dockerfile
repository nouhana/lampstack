FROM php:7.4.3-apache 
ENV DocumentRoot /var/www/html
RUN chown -R $USER:$USER /var/www/html/ \
    docker-php-ext-install mysqli pdo pdo_mysql && \
    sed -ri -e 's!/var/www/html!${DocumentRoot}!g' /etc/apache2/sites-available/*.conf && \
    sed -ri -e 's!/var/www/!${DocumentRoot}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
WORKDIR /var/www/html    
