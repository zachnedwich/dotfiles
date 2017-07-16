#! /bin/bash
# load colour profile
xcalib -d :0 dell_u2711_user.icm
# ruin it with redshift
pgrep redshift &> /dev/null || redshift &> /dev/null &
feh --bg-scale /home/zach/Downloads/jersey-marshes-1874.jpg\!HD.jpg
xset r rate 200 25
xbindkeys 
# start i3
exec i3

