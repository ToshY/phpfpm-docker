<h1 align="center">🐋 PHP-FPM Docker</h1>

<div align="center">
    <a href="https://hub.docker.com/r/t0shy/phpfpm-buster"><img src="https://img.shields.io/badge/Docker%20Hub-t0shy%2Fphpfpm--buster-blue" alt="t0shy/phpfpm-buster" /></a>
    <a href="https://hub.docker.com/r/t0shy/phpfpm-buster-ffmpeg"><img src="https://img.shields.io/badge/Docker%20Hub-t0shy%2Fphpfpm--buster--ffmpeg-blue" alt="t0shy/phpfpm-buster-ffmpeg" /></a>
    <img src="https://img.shields.io/github/actions/workflow/status/toshy/phpfpm-docker/security.yml?branch=main&label=Security" alt="Security">
    <br /><br />
    Customised <a href="https://hub.docker.com/_/php">PHP-FPM 8.x</a> docker images.
</div>

## 📦 Images

- [t0shy/phpfpm-buster](https://hub.docker.com/r/t0shy/phpfpm-buster)
- [t0shy/phpfpm-buster-ffmpeg](https://hub.docker.com/r/t0shy/phpfpm-buster-ffmpeg)

## 🐳 Dockerfile

Includes:

```text
composer:2.5
mlocati/php-extension-installer:2.0
```

PHP extensions:

```text
mysqli-stable
pdo_mysql-stable
exif-stable
gd-stable
imagick-stable
imap-stable
opcache-stable
soap-stable
zip-stable
intl-stable
gettext-stable
sysvsem-stable
amqp-stable
redis-stable
pcntl-stable
```

Working directory:

```text
/app
```

Additional packages:

- [t0shy/phpfpm-buster](https://hub.docker.com/r/t0shy/phpfpm-buster)
  ```text
  software-properties-common
  zip
  unzip
  ```
- [t0shy/phpfpm-buster-ffmpeg](https://hub.docker.com/r/t0shy/phpfpm-buster-ffmpeg)
  ```text
  software-properties-common
  nano
  zip
  unzip
  ffmpeg
  mkvtoolnix
  libimage-exiftool-perl
  ```

## ❕ License

This repository comes with a [MIT license](./LICENSE).
