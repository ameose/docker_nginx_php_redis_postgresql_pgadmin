[ -f ~/.bashrc ] && rm -f ~/.bashrc
ln -s ~/.dotfiles/.bashrc ~/.bashrc

[ -f ~/.bash_aliases ] && rm -f ~/.bash_aliases
ln -s ~/.dotfiles/.bash_aliases ~/.bash_aliases