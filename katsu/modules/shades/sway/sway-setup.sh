#!/bin/bash -x

dnf remove gnome-* cinnamon-* -y

mv ./config /etc/sway/config
