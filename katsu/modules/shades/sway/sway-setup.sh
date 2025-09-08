#!/bin/bash -x

dnf remove gnome-* cinnamon-* -y

# make directory for screenshots to end up in
mkdir ~/Media

cp katsu/modules/shades/sway/config /etc/sway/config
