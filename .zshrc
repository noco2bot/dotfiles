# シンプルなzsh
# License : MIT
# http://mollifier.mit-license.org/

# 環境変数
export LANG=ja_JP.UTF-8

# mac openmpiにてTMPDIRが長すぎるとerrorになる問題
export TMPDIR=/tmp


#LSCOLORS lsコマンドの色設定
export LSCOLORS=gxfxcxdxbxegedabagacad
alias ls='ls -G'

#zshの再起動
alias relogin='exec $SHELL -l'


# git補完設定ファイルの読み込み
fpath=($(brew --prefix)/share/zsh/site-functions $fpath)

# 補完機能を有効にする
autoload -Uz compinit
compinit -u


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
bindkey -e

# 日本語ファイル名を表示可能にする
setopt print_eight_bit
 
# beep を無効にする
setopt no_beep
 
# フローコントロールを無効にする
setopt no_flow_control
 
# Ctrl+Dでzshを終了しない
setopt ignore_eof
 
# '#' 以降をコメントとして扱う
setopt interactive_comments

PROMPT="
 %{${fg[yellow]}%}%~%{${reset_color}%} 
[%n %D{%m/%d %T}]$ "

PROMPT2='[%n]> ' 	

#コマンド実行時に時刻を表示する
re-prompt() {
    zle .reset-prompt
    zle .accept-line
}
zle -N accept-line re-prompt
