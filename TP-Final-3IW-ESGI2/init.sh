#!/bin/sh

while ! nc -z db 3306; do
    sleep 1
done

chown -R www-data:www-data /var/www/html/storage/
chmod +x /var/www/html/storage/

php artisan key:generate

exec php-fpm