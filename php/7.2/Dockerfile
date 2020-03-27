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
    zip \
    jpegoptim optipng pngquant gifsicle vim git

# Installing others dependencies
RUN pecl install imagick
RUN apt-get install -y libonig-dev

# Installing extensions
RUN docker-php-ext-install pdo_mysql mbstring zip exif pcntl bcmath opcache gd
RUN docker-php-ext-enable imagick

# Installing composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Installing others
RUN apt-get install -y nodejs
RUN curl -L https://www.npmjs.com/install.sh | sh
RUN apt-get install -y vim

# Setting locales
RUN echo en_US.UTF-8 UTF-8 > /etc/locale.gen && locale-gen

# Clear cache
#RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Installing others
RUN apt-get install -y unzip

# Adding composer cache folder
RUN mkdir /.composer
RUN chmod -R 777 /.composer
RUN chown -R 1000:1000 /.composer
RUN chmod -R g+s /.composer
RUN mkdir /var/www/laravel
RUN chmod -R 777 /var/www/laravel
RUN chown -R www-data:www-data /var/www/laravel
RUN chmod -R g+s /var/www/laravel

# Setup working directory
WORKDIR /var/www/laravel