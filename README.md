<h1 align="center">🐋 PHP-FPM Docker</h1>

<div align="center">
    <a href="https://hub.docker.com/r/t0shy/phpfpm-bookworm"><img src="https://img.shields.io/badge/Docker%20Hub-t0shy%2Fphpfpm--bookworm-blue" alt="t0shy/phpfpm-bookworm" /></a>
    <a href="https://hub.docker.com/r/t0shy/phpfpm-bookworm-ffmpeg"><img src="https://img.shields.io/badge/Docker%20Hub-t0shy%2Fphpfpm--bookworm--ffmpeg-blue" alt="t0shy/phpfpm-bookworm-ffmpeg" /></a>
    <img src="https://img.shields.io/github/actions/workflow/status/toshy/phpfpm-docker/security.yml?branch=main&label=Security" alt="Security">
    <br /><br />
    Customised <a href="https://hub.docker.com/_/php">PHP-FPM 8.1+</a> docker images
</div>

## 📦 Images

- `phpfpm-bookworm`
  - [GHCR | toshy/phpfpm-bookworm](https://github.com/ToshY/phpfpm-docker/pkgs/container/phpfpm-bookworm)
  - [DockerHub | t0shy/phpfpm-bookworm](https://hub.docker.com/r/t0shy/phpfpm-bookworm)
- `phpfpm-bookworm-ffmpeg`
  - [GHCR | toshy/phpfpm-bookworm-ffmpeg](https://github.com/ToshY/phpfpm-docker/pkgs/container/phpfpm-bookworm-ffmpeg)
  - [DockerHub | t0shy/phpfpm-bookworm-ffmpeg](https://hub.docker.com/r/t0shy/phpfpm-bookworm-ffmpeg)

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

- `t0shy/phpfpm-bookworm`
  ```text
  software-properties-common
  zip
  unzip
  ```
- `t0shy/phpfpm-bookworm-ffmpeg`
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
