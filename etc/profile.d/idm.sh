source /etc/environment

PATH="/local/bin:/prebuilt/jdk/bin:/usr/sbin:/usr/bin:/prebuilt/bin:/prebuilt/rescue:/prebuilt/util:/usr/games:$HOME/bin"

export CPU_N=$(cat /proc/cpuinfo | grep siblings | head -n 1 | awk '{print $3}')
export PYTHONSTARTUP="$HOME/.pythonrc"

alias make="make -j""$(($CPU_N))"
alias ls='ls --color=always'
alias dmesg='dmesg --color=always'
alias grep='grep --color=auto'
alias tree='tree -C'
alias open='gio open'
alias cdr='cd $(realpath "$PWD")'
alias term='xterm -fa "Monospace-14" -g 100x33 -ls "$@"'
alias less='less -R'
alias ncdu='ncdu --color=dark'
alias yay='yay --sudo doas'

#set -o vi
if [ x"$SHELL" = x"bash" ]; then
    bind "set show-all-if-ambiguous on"
    bind "set menu-complete-display-prefix on"
    fi

if [ x"$TERM" = x"xterm" ]; then
    export TERM=xterm-256color
    fi

stty -ixon

if [ x"$UID" != x"0" ]; then
    export PS1="\[\033[1;32;40m\]\u\[\033[0m\]@\[\033[31;40m\]\[\033[1;34;40m\]\h\[\033[0m\]:\w:\[\033[1;33;40m\]$ \[\033[0m\]"
    export PS2='▶ '
else
    export PS1="\[\033[1;32;40m\]\u\[\033[0m\]@\[\033[31;40m\]\[\033[1;34;40m\]\h\[\033[0m\]:\w:\[\033[1;35;40m\]""#"" \[\033[0m\]"
    export PS2='▶ '
fi

