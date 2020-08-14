FROM php:7.4.3-apache 
RUN chown -R $USER:$USER /var/www/html/ \
    cp -r /conf/vhost.conf /etc/apache2/sites-available/000-default.conf && \
    cp -r /conf/apache.conf /etc/apache2/conf-available/docker-php.conf && \
    a2enconf docker-php && \
    docker-php-ext-install mysqli pdo pdo_mysql
