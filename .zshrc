# シンプルなzsh
# License : MIT
# http://mollifier.mit-license.org/

# 環境変数
export LANG=ja_JP.UTF-8

#LSCOLORS lsコマンドの色設定
export LSCOLORS=gxfxcxdxbxegedabagacad
alias ls='ls -G'

#zshの再起動
alias relogin='exec $SHELL -l'


# 補完機能を有効にする
autoload -Uz compinit
compinit

# cd したら自動的にpushdする
setopt auto_pushd
# 重複したディレクトリを追加しない
setopt pushd_ignore_dups


# グローバルエイリアス
alias -g L='| less'
alias -g G='| grep'

# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000


# emacs 風キーバインドにする
#bindkey -e


# 日本語ファイル名を表示可能にする
setopt print_eight_bit
 
# beep を無効にする
setopt no_beep
 
# フローコントロールを無効にする
setopt no_flow_control
 
# Ctrl+Dでzshを終了しない
#setopt ignore_eof
 
# '#' 以降をコメントとして扱う
setopt interactive_comments

# vim:set ft=zsh :


##プロンプトの表示設定
##改行
autoload colors
colors

PROMPT="
 %{${fg[yellow]}%}%~%{${reset_color}%} 
[%n %D{%m/%d %T}]$ "

PROMPT2='[%n]> ' 	


#プロンプトに現在位置を表示
#PS1="%{$fg[cyan]%}[%D{%m/%d %T} %1~]%(!.#.$)${reset_color} "

#PROMPT="%F{cyan}[%n@%m %D{%m/%d %T} %~]%(!.#.$)%f "

#コマンド実行時に時刻を表示する
#re-prompt() {
#    zle .reset-prompt
#    zle .accept-line
#}
#zle -N accept-line re-prompt
<<<<<<< HEAD
#source /usr/local/bin/aws_zsh_completer.sh

#virtualenv 設定
#    source /usr/local/bin/virtualenvwrapper.sh
#    export WORKON_HOME=~/.virtualenvs
=======
source /usr/local/bin/aws_zsh_completer.sh

#virtualenv 設定
    source /usr/local/bin/virtualenvwrapper.sh
    export WORKON_HOME=~/.virtualenvs
>>>>>>> 8879b32caea0a1602020a1778c1e2f6a804fe769


# pip zsh completion start
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _pip_completion pip
# pip zsh completion end

