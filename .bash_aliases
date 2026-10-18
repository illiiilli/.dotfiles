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

# https://www.reddit.com/r/bash/comments/1eoc5t1/what_are_good_common_aliases_that_you_use_in_bash/lhdw7br/
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias mkdir='mkdir -pv'
alias free='free -h'

# The following command is ependent on fzf
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
