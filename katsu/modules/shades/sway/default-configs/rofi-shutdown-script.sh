#!/bin/bash

##      @import "name-of-rofi-theme-set-in-config"

action=$(printf "Log out\nShut Down\nReboot\nCancel" | rofi -dmenu -l 4)

if [[ $action == "Log out" ]]; then
    confirm=$(printf "Yes\nNo" | rofi -dmenu -l 2 -mesg "Are you sure you want to log out?")
    if [[ $confirm == "Yes" ]]; then
        ## might be better to have the intended log out commands for respective wm
        if [[ $DESKTOP_SESSION == "sway" ]]; then
            swaymsg exit
        fi
    else
        exit
    fi

elif [[ $action == "Shut Down" ]]; then
    confirm=$(printf "Yes\nNo" | rofi -dmenu -l 2 -mesg "Are you sure you want to shut down?")
    if [[ $confirm == "Yes" ]]; then
        systemctl poweroff
    else
        exit
    fi

elif [[ $action == "Reboot" ]]; then
    confirm=$(printf "Yes\nNo" | rofi -dmenu -l 2 -mesg "Are you sure you want to reboot?")
    if [[ $confirm == "Yes" ]]; then
        reboot
    else
        exit
    fi

else
    exit
fi
