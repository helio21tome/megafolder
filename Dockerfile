FROM wordpress:php8.2-apache

# Instala PostgreSQL + unzip
RUN apt-get update && \
    apt-get install -y libpq-dev unzip && \
    docker-php-ext-install pdo_pgsql pgsql && \
    rm -rf /var/lib/apt/lists/*

# Baixa pg4wp de mirror GitHub (fork ativo)
RUN curl -O https://github.com/diegok/pgsql/archive/refs/heads/master.zip && \
    unzip master.zip -d /tmp/ && \
    cp -r /tmp/pgsql-master/* /usr/src/wordpress/wp-content/plugins/pg4wp/ && \
    rm -rf /tmp/master.zip /tmp/pgsql-master && \
    chmod -R 755 /usr/src/wordpress/wp-content/plugins/pg4wp

# Copia wp-config
COPY wp-config.php /var/www/html/wp-config.php

# Permissões
RUN chown -R www-data:www-data /var/www/html
