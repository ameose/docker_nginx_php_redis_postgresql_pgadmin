From postgres:15
# вариинт ( alpine )

# Копируем папку conf/.dotfiles в домашнюю папку пользователя root
COPY conf/.dotfiles /root/.dotfiles
# Даем права на выполнение скрипта
RUN chmod +x /root/.dotfiles/startup.sh
# Выполняем скрипт startup.sh во время сборки образа
RUN /root/.dotfiles/startup.sh

# init settings and data
COPY postgres/initdb.sh /docker-entrypoint-initdb.d/initdb.sh
RUN chmod +x /docker-entrypoint-initdb.d/initdb.sh

# copy data to restore
COPY postgres/restore/* /docker-entrypoint-initdb.d/

# backup script
RUN mkdir -p /opt/backups
COPY postgres/pgbackup.sh /opt/pgbackup.sh
RUN chmod +x /opt/pgbackup.sh



# volume for backups
VOLUME ["/opt/backups"]