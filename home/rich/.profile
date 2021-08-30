
if [ $(tty) = "/dev/tty1" ]; then
    echo "startx?"
    read X
    if [ "$X" = "y" ]; then
        exec startx
        fi
    fi

case "$TERM" in
    "linux"|"console")
        setfont
        ;;
    *)
        if [ x"$TERMINFO" != x"/usr/lib/kitty/terminfo" ]; then
            theme.sh idm-6
        fi
        ;;
esac
return

