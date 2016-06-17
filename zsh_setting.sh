cd ..
ln -si dotfiles/.zshrc

ZSH_PATH=$(which zsh)
chsh -s ${ZSH_PATH}
zsh
