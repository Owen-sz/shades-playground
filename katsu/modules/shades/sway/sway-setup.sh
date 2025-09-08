#!/bin/bash -x

dnf remove gnome-* cinnamon-* -y

cp katsu/modules/shades/sway/config /etc/sway/config

