FROM php:7.2-fpm

# Installing dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    mariadb-client \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libmagickwand-dev \
    libzip-dev \
    locales \
    jpegoptim \
    optipng \
    pngquant \
    gifsicle \
    zip \
    unzip \
    vim \
    git \
    libonig-dev

# Installing others dependencies
RUN pecl install imagick
RUN docker-php-ext-enable imagick
RUN pecl install redis
RUN docker-php-ext-enable redis

# Installing extensions
RUN docker-php-ext-install pdo_mysql mbstring zip exif pcntl bcmath opcache gd

# Installing composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Installing others
RUN apt-get install -y nodejs
RUN curl -L https://www.npmjs.com/install.sh | sh

# Clear cache
#RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Setup working directory
RUN mkdir /var/www/laravel
WORKDIR /var/www/laravel