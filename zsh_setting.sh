cd ~
ln -s dotfiles/.zshrc
ln -s dotfiles/.vimrc
ln -s dotfiles/.tmux.conf

# zshをログインシェルに設定
ZSH_PATH=$(which zsh)
chsh -s ${ZSH_PATH}

# zsh起動
zsh
