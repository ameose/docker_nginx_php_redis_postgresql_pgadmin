FROM php:8.2.0-fpm-bullseye

# Install dependencies
RUN apt-get update && apt-get install -y \
  sudo \
  nano \
  git \
  libpng-dev \
  libzip-dev \
  libpq-dev \
  nodejs \
  npm \
  unzip

# Копируем папку conf/.dotfiles в домашнюю папку пользователя root
COPY conf/.dotfiles /root/.dotfiles

# Даем права на выполнение скрипта
RUN chmod +x /root/.dotfiles/startup.sh

# Выполняем скрипт startup.sh во время сборки образа
RUN /root/.dotfiles/startup.sh

RUN useradd -m -u 1000 -G sudo ameon && \
    echo 'ameon:ameon' | chpasswd && \
    echo 'ameon ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

COPY conf/.dotfiles /home/ameon/.dotfiles

RUN chown ameon:ameon /home/ameon/.dotfiles

# Даем права на выполнение скрипта
RUN chmod +x /home/ameon/.dotfiles/startup.sh

# Выполняем скрипт startup.sh во время сборки образа
RUN sudo -u ameon /home/ameon/.dotfiles/startup.sh

# Install extensions
RUN docker-php-ext-install \
    pdo_pgsql \
    pgsql \
    gd \
    zip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

USER 1000