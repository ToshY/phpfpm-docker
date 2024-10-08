ARG PHP_VERSION

FROM php:${PHP_VERSION:-"8.3"}-fpm-bookworm AS phpfpm-base

LABEL maintainer="ToshY (github.com/ToshY)"

COPY --from=composer:2.5 /usr/bin/composer /usr/local/bin/composer

COPY --from=mlocati/php-extension-installer:2.0 /usr/bin/install-php-extensions /usr/local/bin/

ENV COMPOSER_ALLOW_SUPERUSER=1

RUN install-php-extensions mysqli-stable \
      pdo_mysql-stable \
      exif-stable \
      ftp-stable \
      gd-stable \
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
    && apt-get update \
    && apt-get install libexpat1=2.5.0-1+deb12u1

WORKDIR /app

FROM phpfpm-base AS phpfpm-bookworm

RUN apt-get install -y \
      software-properties-common \
      zip \
      unzip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

FROM phpfpm-base AS phpfpm-bookworm-ffmpeg

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
