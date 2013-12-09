# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files 
# (in the package bash-doc) for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for
# more options
#export HISTCONTROL=ignoredups

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
# [ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" -a -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# 
F=$HOME/.bash/aliases; [ -f $F ] && source $F
F=$HOME/.bash/functions; [ -f $F ] && source $F
F=$HOME/.bash/prompt; [ -f $F ] && source $F

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
    
    # Grep colors
    if echo hello|grep --color=auto l >/dev/null 2>&1; then
      export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
    fi
fi

# some more ls aliases
alias ll='ls -lF'
alias la='ls -AF'
alias l='ls -CF'

# 
