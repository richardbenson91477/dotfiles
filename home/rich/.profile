
if [ $(tty) = "/dev/tty1" ]; then
    echo "startx?"
    read X
    if [ "$X" = "y" ]; then
        exec xinit -- vt1 -keeptty
        fi
    fi

case "$TERM" in
    "linux"|"console")
        setfont
        ;;
    *)
        theme.sh darkside
        ;;
esac
return

