FROM php:8.1-fpm

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

RUN docker-php-ext-install pdo pdo_mysql && docker-php-ext-enable pdo_mysql