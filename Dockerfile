FROM php:7.4-fpm-alpine3.13

LABEL maintainer="Packie Pat <biyongyao@gmail.com>"

#ENV
ENV PHP_COMPOSER_URL https://getcomposer.org/composer-stable.phar

RUN apk update \
    && apk add --no-cache git mysql-client curl wget unzip libzip-dev libmcrypt libmcrypt-dev openssh-client icu-dev \
        libxml2-dev freetype-dev libpng-dev libjpeg-turbo-dev g++ make autoconf \
    && docker-php-source extract \
    && pecl install xdebug redis \
    && docker-php-ext-enable xdebug redis \
    && docker-php-source delete \
    && docker-php-ext-install pdo_mysql zip\
    && curl $PHP_COMPOSER_URL -o /usr/local/bin/composer \
    && chmod a+x /usr/local/bin/composer \
    && /usr/local/bin/composer self-update \
    && rm -rf /tmp/*