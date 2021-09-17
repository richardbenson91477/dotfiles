source /etc/environment

PATH="/local/bin:/usr/sbin:/usr/bin:/local/util:/local/rescue:/usr/games:$HOME/bin:$HOME/.local/bin"

export CPU_N=$(cat /proc/cpuinfo | grep siblings | head -n 1 | awk '{print $3}')
export PYTHONSTARTUP="$HOME/.pythonrc"

alias make="make -j""$(($CPU_N))"
alias ls='ls --color=always'
alias dmesg='dmesg --color=always'
alias grep='grep --color=auto'
alias tree='tree -C'
alias open='xdg-open'
alias cdr='cd $(realpath "$PWD")'
alias less='less -R'
alias ncdu='ncdu --color=dark'
alias yay='yay --sudo doas'
alias aurman='echo ...try \"yay\"'
alias pacman='pacman --color=always'
alias emacs='emacs -bg \#0a0a0a -fg \#a0a0a0'

if [ x"$SHELL" = x"bash" ]; then
    bind "set show-all-if-ambiguous on"
    bind "set menu-complete-display-prefix on"
    fi

stty -ixon

# with help from ezprompt.net
if [ x"$UID" != x"0" ]; then
    export PS1="\[\e[35m\]\u\[\e[m\]@\[\e[36m\]\h\[\e[m\]:\[\e[34m\]\w\[\e[m\]:\[\e[33m\]\\$\[\e[m\] "
else
    export PS1="\[\e[32m\]\u\[\e[m\]@\[\e[36m\]\h\[\e[m\]:\[\e[34m\]\w\[\e[m\]:\[\e[32m\]\\$\[\e[m\] "
fi
export PS2='▶ '

function pac_dangling {
    pacman -Qdt --color=never | field 1 | xargs echo
}

