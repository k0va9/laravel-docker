FROM php:8.3-fpm

WORKDIR /src

ENV COMPOSER_HOME=/composer

# for linux,wsl permission
ARG UID=1000
ARG GID=1000

COPY --from=composer:2.8 /usr/bin/composer /usr/bin/composer
COPY --from=node:22.11.0-slim /usr/local/bin/node /usr/bin/node
COPY --from=node:22.11.0-slim /usr/local/lib/node_modules/ /usr/local/lib/node_modules/
RUN <<EOF
  ln -s /usr/local/lib/node_modules/npm/bin/npm-cli.js /usr/local/bin/npm
  ln -s /usr/local/lib/node_modules/npm/bin/npx-cli.js /usr/local/bin/npx
EOF

RUN <<EOF
  apt-get update
  apt-get -y install --no-install-recommends git unzip libzip-dev libicu-dev libonig-dev
  docker-php-ext-install intl pdo_mysql zip bcmath
  groupadd --gid $GID dev
  useradd  -m --uid $UID --gid $GID dev
  mkdir /composer
  chown dev:dev /src
  chown dev:dev /composer
  apt-get clean
  rm -rf /var/lib/apt/lists/*
EOF

USER dev
