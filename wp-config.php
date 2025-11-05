<?php
/** FORÇA POSTGRESQL ANTES DE QUALQUER COISA */
if (!defined('DB_DRIVER')) {
    define('DB_DRIVER', 'pdo_pgsql');
}

/** DADOS DO BANCO */
define('DB_NAME',     getenv('WORDPRESS_DB_NAME')     ?: 'wpdb_fh9e');
define('DB_USER',     getenv('WORDPRESS_DB_USER')     ?: 'wpuser');
define('DB_PASSWORD', getenv('WORDPRESS_DB_PASSWORD') ?: '4fperDqb7njmB4BbigvOZ9BUV4rywEBR');
define('DB_HOST',     (getenv('WORDPRESS_DB_HOST')    ?: 'dpg-d458lvn5r7bs73acav7g-a.oregon-postgres.render.com') . ':5432');
define('DB_CHARSET',  'utf8');
define('DB_COLLATE',  '');

$table_prefix = 'wp_';
define('WP_DEBUG', true);

/** CARREGA WORDPRESS */
if (!defined('ABSPATH')) {
    define('ABSPATH', __DIR__ . '/');
}
require_once ABSPATH . 'wp-settings.php';
