#!/bin/bash -x

dnf remove gnome-* cinnamon-* -y

echo "set $term kitty" >> "set $term foot" /etc/sway/config # use sed this won't work
# open desktop apps with drun, run any command with run. Can have meta+X open one, and meta+Y open another
echo "set $menu rofi -show drun -show-icons" >> /etc/sway/config
