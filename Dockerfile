ARG PHP_VERSION

FROM php:${PHP_VERSION:-"8.2"}-fpm-buster AS phpfpm-base

LABEL maintainer="ToshY (github.com/ToshY)"

COPY --from=composer:2.5 /usr/bin/composer /usr/local/bin/composer

COPY --from=mlocati/php-extension-installer:2.0 /usr/bin/install-php-extensions /usr/local/bin/

ENV COMPOSER_ALLOW_SUPERUSER=1

RUN install-php-extensions mysqli-stable \
      pdo_mysql-stable \
      exif-stable \
      gd-stable \
      imagick-stable \
      imap-stable \
      opcache-stable \
      soap-stable \
      zip-stable \
      intl-stable \
      gettext-stable \
      sysvsem-stable \
      amqp-stable \
      redis-stable \
      pcntl-stable \
    && apt-get update

WORKDIR /app

FROM phpfpm-base AS phpfpm-buster

RUN apt-get install -y \
    software-properties-common \
    zip \
    unzip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

FROM phpfpm-base AS phpfpm-buster-ffmpeg

RUN apt-get install -y \
    software-properties-common  \
    nano \
    zip \
    unzip \
    ffmpeg \
    mkvtoolnix \
    libimage-exiftool-perl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
