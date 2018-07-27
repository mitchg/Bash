
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac
###################################################################
#statement to tell user that configs from .bashrc is being used
force_color_prompt=yes



echo 'FROM .BASHRC'

endColor='\e[0m'
reset='tput sgr0'


PS1="\[\033[1;36m\] \d \t\[\033[01;31m\]  \u@\h ->\n $\[\033[1;32m\] ";
export PS1;


alias ls='ls -G'
alias ll='ls -lG'


#T set aliases for supported commands
[[ -s " ~/grc.bashrc" ]] && source ~/grc.bashrc


