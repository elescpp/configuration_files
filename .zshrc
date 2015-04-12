# Created by newuser for 5.0.0

PROMPT="%F{cyan}%n%f@%M[%d] %D %*
%# "

#alias
alias ls='ls --color'
alias cp='cp -r'
alias rm='rm -r'
alias cdh='cd /cygdrive/c/home'

export PATH="/usr/local/bin:/usr/bin:/bin:/opt/bin:/mingw64/bin:/mingw32/bin"


autoload -U compinit
compinit

#save history
HISTFILE=$HOME/.zsh_history
HISTSEIZE=1000
SAVEHIST=1000

export LANG=en_US.UTF-8

typeset -A key

key[home]=${terminfo[khome]}
key[End]=${terminfo[kend]}
key[Insert]=${terminfo[kich1]}
key[Delete]=${terminfo[kdch1]}
key[Up]=${terminfo[kcuu1]}
key[Down]=${terminfo[kcud1]}
key[Left]=${terminfo[kcub1]}
key[Right]=${terminfo[kcuf1]}
key[PageUp]=${terminfo[kpp]}
key[PageDown]=${terminfo[knp]}

# setup key accordingly
[[ -n "${key[Home]}"    ]]  && bindkey  "${key[Home]}"    beginning-of-line
[[ -n "${key[End]}"     ]]  && bindkey  "${key[End]}"     end-of-line
[[ -n "${key[Insert]}"  ]]  && bindkey  "${key[Insert]}"  overwrite-mode
[[ -n "${key[Delete]}"  ]]  && bindkey  "${key[Delete]}"  delete-char
[[ -n "${key[Up]}"      ]]  && bindkey  "${key[Up]}"      up-line-or-history
[[ -n "${key[Down]}"    ]]  && bindkey  "${key[Down]}"    down-line-or-history
[[ -n "${key[Left]}"    ]]  && bindkey  "${key[Left]}"    backward-char
[[ -n "${key[Right]}"   ]]  && bindkey  "${key[Right]}"   forward-char

