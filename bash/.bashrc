# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
#case "$TERM" in
#    xterm-color) color_prompt=yes;;
#esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
    color_prompt=yes
    else
    color_prompt=
    fi
fi

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ] && [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
# ~/.bash_profile: executed by bash(1) for login shells.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/login.defs
#umask 022

# include .bashrc if it exists
#if [ -f ~/.bashrc ]; then
#    . ~/.bashrc
#fi

RABBIT_HOME=/usr/lib/erlang/lib/rabbitmq-server-1.5.5/
# set PATH so it includes user's private bin if it exists
if [ -d ~/bin ] ; then
    PATH=~/bin:"${PATH}"
fi
PATH=/usr/bin:${PATH}
PATH=/usr/local/git/bin:$PATH
PATH=$RABBIT_HOME/scripts:${PATH}
PATH=~/bin:${PATH}
PATH=/usr/local/heroku/bin:${PATH}
export PATH

DATE_FORMAT="%a %d %b %H:%M:%S"
get_short_path () {
    PADDING=1
    PREPEND="..."
    BUFFER=0
    USER="$USER@`hostname`"
    USER_LENGTH=${#USER}
    CWD=`pwd`
    PATH_LENGTH=${#CWD}
    TOTAL_LENGTH=`expr $USER_LENGTH + $PADDING + $PATH_LENGTH`
    if [ $TOTAL_LENGTH -le 80 ]; then
        echo $CWD
    else
        LENGTH_PREPEND=${#PREPEND}
        OVERAGE=`expr $TOTAL_LENGTH + $LENGTH_PREPEND + $BUFFER - 80`
        SHORT_PATH=`echo $PWD|cut -b "${OVERAGE}"-`
        echo "${PREPEND}${SHORT_PATH}"
    fi
}

export EDITOR=vim
export SVN_EDITOR=$EDITOR
export PYTHONSTARTUP=/Users/oubiwann/.pystartup
export SVN_EDITOR=vi
export PS1='\n\[\033[01;32m\]\u@\e[0;31m\h \033[01;34m`get_short_path`\n\[\033[0;32m\]`date +"$DATE_FORMAT"` $ \[\e[1;32m\]\[\e[0m\]'
export LANG=en_US.UTF-8
export LANGUAGE=$LANG
#export LC_CTYPE=C
export LC_CTYPE=en_US.UTF-8
export DEBFULLNAME='Duncan McGreggor'
export DEBEMAIL='duncan@dreamhost.com'
export DEBSIGN_KEYID='F71DC01A'
export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

# aliases
alias vi="vim"
