#!/bin/bash

# kill previously running background scripts
pgrep -f  $HOME/.config/i3/reload.sh
killall compton
killall polybar

# sleep one sec, some time to end processes
sleep 1

# source bash file
source ~/.bashrc

# reaload polybar
if [[ `xrandr --query | grep " 1920x1080+" | cut -d " " -f1 | wc -l` -eq 2 ]]; then
        polybar main &
        polybar alt &
else
        polybar main &
fi

# swap caps with escape NOTE: Remove on VirtualMachines
#setxkbmap -option caps:swapescape

# change background
feh --bg-fill $HOME/.background

# reload compton
compton --config ~/.config/compton/config
