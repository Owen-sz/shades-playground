#!/bin/bash -x

dnf remove gnome-* cinnamon-* -y

# make directory for screenshots to end up in
mkdir ~/Media

# Sway
cp katsu/modules/shades/sway/config /etc/sway/config

# Waybar
cp katsu/modules/shades/sway/config.jsonc /etc/xdg/waybar/
cp katsu/modules/shades/sway/style.css /etc/xdg/waybar/

# Rofi
cp katsu/modules/shades/sway/config.rasi ~/.config/rofi/
