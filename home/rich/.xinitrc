#!/bin/sh
#xrdb < ~/.Xresources
#exec xterm
i3 >& ~/.cache/my_i3.log
#qtile start
killall dbus-launch
killall dbus-daemon
killall xsel
killall xss-lock
killall pipewire
killall pipewire-media-session
killall dunst
killall volumeicon
killall xpad
killall i3bar
killall i3blocks
