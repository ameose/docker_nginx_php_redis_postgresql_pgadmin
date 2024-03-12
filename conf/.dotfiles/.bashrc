[ -f ~/.dotfiles/func/.colors.sh ] && . ~/.dotfiles/func/.colors.sh
[ -f ~/.bash_aliases ] && . ~/.bash_aliases


# Форматирование элементов приглашения
USER="${MAGENTA}\u${RESET_COLOR}"  # Имя пользователя
HOST="${GREEN}\h${RESET_COLOR}"    # Имя хоста
DIR="${YELLOW}\W${RESET_COLOR}"    # Текущая директория

# Сборка PS1
PS1="${USER}@${HOST} => ${DIR}\n"

# Экспорт PS1
export PS1