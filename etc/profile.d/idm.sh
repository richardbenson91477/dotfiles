source /etc/environment

PATH="/local/bin:/usr/sbin:/usr/bin:/local/util:/local/rescue:/usr/games:$HOME/bin:$HOME/.local/bin"

export CPU_N=$(cat /proc/cpuinfo | grep siblings | head -n 1 | awk '{print $3}')
export PYTHONSTARTUP="$HOME/.pythonrc"

alias make="make -j""$(($CPU_N))"
alias ls='ls --color=always'
alias dmesg='dmesg --color=always'
alias grep='grep --color=auto'
alias tree='tree -C'
alias open='gio open'
alias cdr='cd $(realpath "$PWD")'
#alias term='xterm -fa "Monospace-14" -g 100x33 -ls "$@"'
alias less='less -R'
alias ncdu='ncdu --color=dark'
alias yay='yay --sudo doas'
alias aurman='echo ...try \"yay\"'
alias pacman='pacman --color=always'

#set -o vi
if [ x"$SHELL" = x"bash" ]; then
    bind "set show-all-if-ambiguous on"
    bind "set menu-complete-display-prefix on"
    fi

if [ x"$TERM" = x"xterm" ]; then
    export TERM=xterm-256color
    fi

stty -ixon

STARTCOLOR30='\e[0;30m';
STARTCOLOR31='\e[0;31m';
STARTCOLOR32='\e[0;32m';
STARTCOLOR33='\e[0;33m';
STARTCOLOR34='\e[0;34m';
STARTCOLOR35='\e[0;35m';
ENDCOLOR="\e[0m"
export PS2='▶ '
if [ x"$UID" != x"0" ]; then
    export PS1="$STARTCOLOR32\u$ENDCOLOR@$STARTCOLOR34\h$ENDCOLOR:\w$STARTCOLOR34""$""$ENDCOLOR "
else
    export PS1="$STARTCOLOR32\u$ENDCOLOR@$STARTCOLOR35\h$ENDCOLOR:\w$STARTCOLOR33#$ENDCOLOR "
fi

