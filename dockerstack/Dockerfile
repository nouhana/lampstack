FROM php:7.4.3-apache 
RUN chown -R $USER:$USER /var/www/html/
RUN restorecon -r /var/www/html
RUN docker-php-ext-install mysqli pdo pdo_mysql
