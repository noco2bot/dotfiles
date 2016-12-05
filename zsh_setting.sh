cd ..
ln -s dotfiles/.zshrc

# zshをログインシェルに設定
ZSH_PATH=$(which zsh)
chsh -s ${ZSH_PATH}

# zsh起動
zsh
