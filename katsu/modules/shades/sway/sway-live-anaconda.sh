cat >>/var/lib/livesys/livesys-session-extra <<ALLEOF
# Install welcome screen
sed -i 's/Fedora/Ultramarine/g' /usr/share/anaconda/gnome/fedora-welcome
ALLEOF

# Anaconda time

## Runs the GUI program from $@ in Sway

CONFIG_FILE=$(mktemp --suffix="-wl-sway-firstboot-config")
RUN_SCRIPT=$(mktemp --suffix="-wl-sway-firstboot-run")
EXIT_CODE_SAVE=$(mktemp --suffix="-wl-sway-firstboot-exit")

cat > ${CONFIG_FILE} << EOF
# Sway configuration for Anaconda initial setup.
xwayland force
swaybg_command -

bindsym Mod4+shift+e exec swaynag \
        -t warning \
        -m 'What do you want to do?' \
        -b 'Poweroff' 'systemctl poweroff' \
        -b 'Reboot' 'systemctl reboot'

# Disable displays on idle
exec command -v swayidle >/dev/null && swayidle -w \
        timeout 300 'swaymsg "output * power off"' \
             resume 'swaymsg "output * power on"'

# Apply system keyboard configuration
exec /usr/libexec/sway-systemd/locale1-xkb-config

# Show initial-setup-gui as fullscreen
for_window [class="[Ii]nitial-setup-graphical"] fullscreen enable
exec ${RUN_SCRIPT}
EOF

cat > ${RUN_SCRIPT} << EOF
#!/bin/sh
$@
echo $? > ${EXIT_CODE_SAVE}
sway exit
EOF

chmod +x ${RUN_SCRIPT}

# Set some compatibility variables if we're in a VM
case $(systemd-detect-virt --vm) in
    "none"|"")
        ;;
    "kvm")
        # WLR_NO_HARDWARE_CURSORS=1 is not needed with legacy DRM interface
        export WLR_RENDERER=pixman
        export WLR_DRM_NO_ATOMIC=1
        ;;
    *)
        # https://github.com/swaywm/sway/issues/6581
        export WLR_NO_HARDWARE_CURSORS=1
        ;;
esac

sway --config=${CONFIG_FILE}
exit_code=$(< ${EXIT_CODE_SAVE})

rm ${CONFIG_FILE} ${RUN_SCRIPT} ${EXIT_CODE_SAVE}
exit $exit_code
