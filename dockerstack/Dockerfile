FROM php:7.4.3-apache 
#ARG SSH_PASS=sshpass123
#RUN useradd -m -s /bin/bash -p $(openssl passwd -1 $SSH_PASS) webssh
#we update a list of repositories and install openssh-server. 
#then we clear a list of repos to make our docker image smaller.

#RUN apt-get -y update && \
    #apt-get -y — no-install-recommends install — fix-missing openssh-server && \
    #rm -rf /var/lib/apt/lists/*
RUN docker-php-ext-install mysqli pdo pdo_mysql
#CMD chmod 0755 ${DOCKER_STACK_DIR}/start.sh && ${DOCKER_STACK_DIR}/start.sh && apache2-foreground

