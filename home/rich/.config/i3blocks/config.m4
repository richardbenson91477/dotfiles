# i3blocks configuration file
#
# The i3blocks man page describes the usage of the binary,
# and its website describes the configuration:
#
#     https://vivien.github.io/i3blocks


# Global properties
separator=false
separator_block_width=15

[xboard]
full_text=♔
command=xboard -depth 2 -fcp hoichess
color=#20e0a0

[dmenu_abstract]
full_text=dmenu_abstract
command=$HOME/bin/dmenu_abstract
color=#a04080

[ranger]
full_text=📁
command=alacritty -e ranger
color=#2080e0

[greetings]
full_text="M4UID"
color=#f5af19
command=alacritty -e htop
color=#a08000

[gsimplecal]
full_text=🗓
command=gsimplecal
color=#e0e0e0

[time]
command=date +"%a %b %d %y %I:%M %p"
interval=10
