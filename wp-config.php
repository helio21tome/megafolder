<?php

define('WP_POSTGRESQL', true); // Ativa pg4wp
// Configuração do PostgreSQL
define('DB_NAME', getenv('WORDPRESS_DB_NAME') ?: 'wpdb_fh9e');
define('DB_USER', getenv('WORDPRESS_DB_USER') ?: 'wpuser');
define('DB_PASSWORD', getenv('WORDPRESS_DB_PASSWORD') ?: '4fperDqb7njmB4BbigvOZ9BUV4rywEBR');
define('DB_HOST', (getenv('WORDPRESS_DB_HOST') ?: 'dpg-d458lvn5r7bs73acav7g-a.oregon-postgres.render.com') . ':5432');
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');

// Ativa pg4wp
define('WP_POSTGRESQL', true);

// Chaves de segurança (gere em https://api.wordpress.org/secret-key/1.1/salt/)
define('AUTH_KEY',         'put your unique phrase here');
define('SECURE_AUTH_KEY',  'put your unique phrase here');
define('LOGGED_IN_KEY',    'put your unique phrase here');
define('NONCE_KEY',        'put your unique phrase here');
define('AUTH_SALT',        'put your unique phrase here');
define('SECURE_AUTH_SALT', 'put your unique phrase here');
define('LOGGED_IN_SALT',   'put your unique phrase here');
define('NONCE_SALT',       'put your unique phrase here');

$table_prefix = 'wp_';
define('WP_DEBUG', false);

if (!defined('ABSPATH')) {
    define('ABSPATH', dirname(__FILE__) . '/');
}
require_once(ABSPATH . 'wp-settings.php');
