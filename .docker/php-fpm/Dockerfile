FROM php:8.1.0-fpm

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y install \
    git \
    zip \
    curl \
    unixodbc-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    libbz2-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    && apt-get clean; 

RUN docker-php-ext-install pdo_mysql opcache bcmath bz2

RUN docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg
RUN docker-php-ext-install -j$(nproc) gd

RUN pecl install xdebug
RUN docker-php-ext-enable xdebug

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php \
    && mv composer.phar /usr/local/bin/composer

RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*