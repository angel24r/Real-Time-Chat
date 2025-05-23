FROM php:8.2-fpm
WORKDIR /usr/src/app
COPY . ./
COPY --from=composer:2.2 /usr/bin/composer /usr/local/bin/composer
RUN apt update && apt install -y zlib1g-dev libpng-dev libxml2-dev libzip-dev libcurl4-openssl-dev libpq-dev
RUN docker-php-ext-install gd xml zip curl pdo_pgsql pgsql calendar
COPY ./php/php.ini /usr/local/etc/php/conf.d/php.ini
