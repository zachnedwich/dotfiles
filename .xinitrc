#! /bin/bash
# load colour profile
xcalib -d :0 dell_u2711_user.icm
# ruin it with redshift
redshift &> /dev/null &
feh --bg-scale /home/zach/bg.png
compton --config /home/zach/.config/compton/compton.conf &
xset r rate 200 25
# start i3
exec i3

