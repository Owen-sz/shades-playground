- rofimoji character selector (in fedorapkg)
   use Meta+. to open
- rofi-wayland as a file explorer?
- rofi clipboard history
- rofi bluetooth/network menu
- dynamically hide waybar icons?
- blue transparency + ui elements (like the waybar clock or calendar) inside bubbles all over cuz water
- prioritize being fast
- some sort of way to centralize all your configs easily and BE ABLE TO ADD THEM MANUALLY TOO. so like look in the docsof the random ass package u just installed to find where the config is and add it manually. base on umcli?
- figure out why fedora sway doesnt pull in seatd? wtf is up with seatd
- wrap swaybg in umcli
- fedora sway uses swaybg which has its images in usr/share/backgrounds/ and has its config (what image sway is using) in the sway config (etc/sway/config)
- lea has that css website for os ui little snippets
- tailwind css is useful?
- umcli thing that tells u all your keybinds (mostly found in sway config i think)
- fix the issue with fedora sway inside gnome boxes being too small. its a hidpi issue. maybe solved with something alogn the lines of spice-display or qemu-ui-spice-app and qemu-ui-spice-core?
- useful for waybar inspo https://github.com/Alexays/Waybar/wiki/Examples
- font awesome 7 gliph copy is useful for waybar and rofi ricing (maybe see if including font awesome 7 pro is okay even if its normally paid cuz um is funny like that)
- move all config files to release package
- get multitouch support for trackpads and not just simulate the 3 buttons at the bottom of the trackpads
- use for font-variant-numeric: tabular-nums; css waybar clock if possible  https://developer.mozilla.org/en-US/docs/Web/CSS/font-variant-numeric
- gparted pulls in all of gnome, find different disk util or somehow get gparted without gnome apps
- add dual battery support to waybar (for surface)
- put any scripts that use rofi in the rofi dir (e.g. rofi-shutdown-script.sh)
- get the tuned switcher waybar module from the fedora sway config, add it. the underlying functionality is all still there its prettymuch a copy+paste
- make battery icon in waybar green if battery is 100%, wether charging or not
- you can run `kitty themes` to change kitty theme from their default selection.
- get the custom/media module working in waybar
- make temp module in waybar yellow/red if it gets too hot. same with cpu/mem?
- get better battery icon for charging. maybe a way to get font awesome 7 pro stuff in? (even tho its paid but theres a free thing on the aur)

Completed Items:
- change meta+shift+q bidn for closing window in sway config to meta+ q
- Include nmtui
- get rid of cinnamon config files
- rofi shutdown menu
- waybar update module with topgrade
- get rid of all the bs packages like the perl shit?? where does perl even come from? is it from UM? is it needed?
- sddm fucky, lightdm pulls in cinnamon and doesnt like sway it says xdg_runtime_dir is not set in the enviornment??

Things u need to config:
- waybar
- swaylock (might be more like systemd config stuff)
- sway
- swaybg (in sway config, just needs um wallpaper integration)
- swayidle (also in sway config i think, maybe systemd too)
- rofi and all the other scripts (ties in with waybar/keybinds in sway)
- greeter (wallpaper will not be the same as swaybg by default, youll have to configure it seperately)
- remove fedora firefox bookmark files with the setup script?
- configure kitty
- add dual battery support for thinkpads into waybar

Fix file ownership issues in zed when editing the configs while developing them by running these commands:
- sudo chown -R user:group [config directory or file you need to be able to edit with zed]
i.e.  sudo chown -R j:wheel /etc/xdg/waybar or sudo chown -R j:wheel /etc/sway/

Where configs are:

Sway:
/etc/sway/config

Waybar:
/etc/xdg/waybar/config.jsonc
/etc/xdg/waybar/style.css

Rofi:
/usr/share/rofi/themes/ (where theme css? files themselves are stored)
~/.config/rofi/rofi.rasi (themeing config (points to a theme file in usr/share/rofi/themes/, put scripts in this dir probably)
theres also a themes folder somewhere

NetworkManager (might need this config for rofi script stuff idk):
/etc/NetworkManager/NetworkManager.conf  Config file location
/etc/NetworkManager/conf.d  Config directory location

Kitty:
~/.config/kitty/kitty.conf
