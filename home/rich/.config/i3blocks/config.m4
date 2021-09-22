define(`M4LAUNCHER',`
[$1]
full_text=$2
command=i3-msg -q "exec --no-startup-id $3"
color=$4
')dnl

define(`M4MLAUNCHER',`
[$1]
full_text=$2
command=i3blocks_mouse_launcher "$3"
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

M4MLAUNCHER(`qutebrowser',`🕵',`qutebrowser',`#2020f0')
M4MLAUNCHER(`alacritty',`💻',`alacritty',`#00FF00')
M4MLAUNCHER(`xboard',`♚',`xboard -depth 2 -fcp hoichess',`#f0a0a0')
M4MLAUNCHER(`ranger',`📁',`alacritty -e ranger',`#2080e0')
M4MLAUNCHER(`budget',`💼',`xdg-open $HOME/.budget')
M4MLAUNCHER(`notes',`📜',`xdg-open $HOME/.notes')
M4LAUNCHER(`dmenu_abstract',`🌈',`$HOME/bin/dmenu_abstract',`#a04080')

M4MLAUNCHER(`greetings',M4UID,`alacritty -e htop',`#f080a0')

M4INTERVAL(`weather',`curl -Ss "https://wttr.in?0&T&Q" | cut -c 16- | head -2 | xargs echo',`3600',`#A4C2F4')
M4INTERVAL(`date',`$HOME/bin/i3blocks_date_or_cal',`60',`#ffc080')

M4LAUNCHER(`scrot',`⎙',`scrot',`#a0a0a0')
M4LAUNCHER(`mixer',`🎧',`pavucontrol',`#f09090')

