#!/bin/sh
sudo pip2 install mopidy-iris --upgrade
nohup mopidy -v >/dev/null 2>&1 & 

