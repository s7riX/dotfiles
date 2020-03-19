#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias ll='ls -lah'

##Setting up Go##
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

source /home/s7rix/.config/broot/launcher/bash/br
alias free='free -m'
export EDITOR=vim

##Powerline-shell configuration
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
export PATH=$PATH:/home/s7rix/.local/bin

alias config='/usr/bin/git --git-dir=/home/s7rix/dotfiles --work-tree=/home/s7rix'
source ~/.bash_aliases
## Fixing the scaling issue with java apps
export _JAVA_AWT_WM_NONREPARENTING=1
