FROM nginx:latest

RUN apt update && apt install -y \
    nano

# Копируем папку conf/.dotfiles в домашнюю папку пользователя root
COPY conf/.dotfiles /root/.dotfiles

# Даем права на выполнение скрипта
RUN chmod +x /root/.dotfiles/startup.sh

# Выполняем скрипт startup.sh во время сборки образа
RUN /root/.dotfiles/startup.sh
