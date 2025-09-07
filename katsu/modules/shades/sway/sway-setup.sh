#!/bin/bash -x

dnf remove gnome-* cinnamon-* -y

CONFIG_FILE="katsu/modules/shades/sway/config"
DEST_DIR="/etc/sway/config"
cp "$CONFIG_FILE" "$DEST_DIR"
# cp config /etc/sway/config

#
# /etc/xdg/waybar/config.jsonc
# /etc/xdg/waybar/style.css
