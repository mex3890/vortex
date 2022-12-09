FROM php:8.1-fpm
ARG uid=1000
ARG user=${DOCKER_USERNAME}
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml12-dev \
    zip \
    unzip \
RUN apt-get clean && rm -Rf /var/lib/apt/lists/*
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Create system user to run Composer and Cosmo Commands
RUN useradd -G www-data, root -u $uid -d /home/$user $user
RUN mkdir -p /home/$user/.composer && \
    chown -R $user:$user /home/$user

# Install Composer
COPY --from=composer:latest /usr/bin/compsoer /usr/bin/composer

# Set working directory
WORKDIR /var/www

USER $user
