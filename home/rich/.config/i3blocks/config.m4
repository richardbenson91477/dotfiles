define(`M4LAUNCHER',`
[$1]
full_text=$2
command=i3blocks_mouse_launcher $3
color=$4
')dnl

define(`M4INTERVAL',`
[$1]
command=$2
interval=$3
color=$4
')dnl

separator=false
separator_block_width=8

M4LAUNCHER(`xboard',`♔',`xboard -depth 2 -fcp hoichess',`#20e0a0')
M4LAUNCHER(`ranger',`📁',`alacritty -e ranger',`#2080e0')
M4LAUNCHER(`dmenu_abstract',`🌈',`$HOME/bin/dmenu_abstract',`#a04080')
M4LAUNCHER(`gsimplecal',`🗓 ',`gsimplecal',`e0e0e0')
M4LAUNCHER(`greetings',M4UID,`alacritty -e htop',`#f080a0')

M4INTERVAL(`weather',`curl -Ss "https://wttr.in?0&T&Q" | cut -c 16- | head -2 | xargs echo',`3600',`#A4C2F4')
M4INTERVAL(`time',`date +"%a %b %d %y %I:%M %p"',`60',`#ffc080')

