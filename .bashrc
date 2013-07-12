# .bashrc file

# GIT functions for displaying the name of current git branch in a repo
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working
  directory clean)" ]] && echo "*"
}
function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo " ("$(parse_git_dirty)${ref#refs/heads/}")"
}

# Define colours - specifically for the command prompt       
BLUE="\[\033[1;34m\]" 
RED="\[\033[0;31m\]" 
MAGENTA="\[\033[0;35m\]" 
YELLOW="\[\033[0;33m\]" 
GREEN="\[\033[0;32m\]"
         
# Changes prompt to be coloured
PS1="$GREEN(\A) ${debian_chroot:+($debian_chroot)}$YELLOW\u@\h\[\033[00m\]:$GREEN\w$YELLOW\$(parse_git_branch)\[\033[00m\]\n\$ "

# Set useful aliases - Some from https://github.com/startup-class/dotfiles

# Prevent accidents
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
set -o noclobber

# directory
alias ll="ls -alrtF --color"
alias ..='cd ..'