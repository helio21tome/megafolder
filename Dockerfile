FROM wordpress:php8.2-apache

# Instala driver PostgreSQL
RUN apt-get update && \
    apt-get install -y libpq-dev && \
    docker-php-ext-install pdo_pgsql pgsql && \
    rm -rf /var/lib/apt/lists/*

# Baixa e ativa o plugin pg4wp
RUN curl -O https://downloads.wordpress.org/plugin/pg4wp.zip && \
    unzip pg4wp.zip -d /usr/src/wordpress/wp-content/plugins/ && \
    rm pg4wp.zip

# Copia wp-config customizado
COPY wp-config.php /var/www/html/wp-config.php

RUN chown -R www-data:www-data /var/www/html
