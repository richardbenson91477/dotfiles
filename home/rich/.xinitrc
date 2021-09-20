#!/bin/sh
#xrdb < ~/.Xresources
#exec xterm
i3 >& ~/.cache/my_i3.log
#xmonad
killall pipewire
killall pipewire-media-session
