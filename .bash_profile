export BASH_SILENCE_DEPRECATION_WARNING=1
export HISTFILESIZE=1000000
export HISTSIZE=1000000
export HISTCONTROL=ignoredups:erasedups

shopt -s histappend

set -o vi
PS1='\w\$ '
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export HOMEBREW_NO_AUTO_UPDATE=1
alias c='clear'
alias p='python'
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'

