FROM wordpress:php8.2-apache

# INSTALA POSTGRESQL
RUN apt-get update && \
    apt-get install -y libpq-dev && \
    docker-php-ext-install pdo pdo_pgsql && \
    rm -rf /var/lib/apt/lists/*

# COPIA wp-config.php
COPY wp-config.php /var/www/html/wp-config.php

# PERMISSÕES
RUN chown -R www-data:www-data /var/www/html
