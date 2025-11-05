FROM wordpress:php8.2-apache

# Instala driver PostgreSQL
RUN apt-get update && \
    apt-get install -y libpq-dev && \
    docker-php-ext-install pdo_pgsql pgsql && \
    rm -rf /var/lib/apt/lists/*

# Copia wp-config personalizado
COPY wp-config.php /var/www/html/wp-config.php

# Permissões
RUN chown -R www-data:www-data /var/www/html
