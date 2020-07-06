FROM mysql:5.7
RUN chown -R mysql:root /var/run/mysqld/ \
 && rm -rf /var/lib/apt/lists/*
