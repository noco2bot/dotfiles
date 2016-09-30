cd ..
ln -si dotfiles/.zshrc

# zshをログインシェルに設定
ZSH_PATH=$(which zsh)
chsh -s ${ZSH_PATH}

# zsh起動
zsh
