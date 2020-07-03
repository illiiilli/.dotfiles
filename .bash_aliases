# 
# ~/.bash_aliases
#

# Inspired by https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir="$HOME/.cfg" --work-tree="$HOME"'
alias win_config='git --git-dir="$HOME/.cfg" --work-tree="$HOME"'

# ls aliases
alias ls='ls -CF --color=auto'
alias ll='ls -alhF'

alias grep='grep --color=auto'

alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
