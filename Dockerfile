FROM wordpress:php8.2-apache

# Instala PostgreSQL + unzip (SEM limpar cache antes!)
RUN apt-get update && \
    apt-get install -y libpq-dev unzip && \
    docker-php-ext-install pdo_pgsql pgsql && \
    rm -rf /var/lib/apt/lists/*

# Baixa e extrai pg4wp
RUN curl -O https://downloads.wordpress.org/plugin/pg4wp.zip && \
    unzip pg4wp.zip -d /usr/src/wordpress/wp-content/plugins/ && \
    rm pg4wp.zip

# Copia wp-config
COPY wp-config.php /var/www/html/wp-config.php

# Permissões
RUN chown -R www-data:www-data /var/www/html
