# 確認
echo execute zshrc


# 補完機能
autoload -Uz compinit && compinit
zstyle ':completion:*:default' menu select=1

# 色
autoload -Uz colors && colors

# hook
autoload -Uz add-zsh-hook

##help 有効化
autoload -U run-help
autoload run-help-git
autoload run-help-svn
autoload run-help-svk
alias help=run-help

## 日本語ファイル名を表示可能にする
setopt print_eight_bit


#color 参考：http://www.sirochro.com/note/terminal-zsh-prompt-customize/
PROMPT="${fg[magenta]}Zsh ${fg[green]}%n${reset_color}@${fg[cyan]}%M${reset_color}:${fg[yellow]}%~ ${reset_color}[ %D %* ]
$ ${fg[yellow]}"
# PROMPT=""

add-zsh-hook preexec my_preexec
add-zsh-hook precmd my_precmd

my_precmd() {
}
my_preexec() {
  printf "${reset_color}"
}


#ls の　色　参考：http://mkit2009.hatenablog.com/entry/2013/01/28/001213
LSCOLORS=exfxcxdxbxegedabagacad
LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias ls="ls -GF"
alias gls="gls --color"

alias ls='ls --color=auto'

zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'


### git ###
# https://git-scm.com/book/ja/v2/%E4%BB%98%E9%8C%B2-A%3A-%E3%81%9D%E3%81%AE%E4%BB%96%E3%81%AE%E7%92%B0%E5%A2%83%E3%81%A7%E3%81%AEGit-Zsh%E3%81%A7Git%E3%82%92%E4%BD%BF%E3%81%86
