- rofimoji character selector (in fedorapkg)
   use Meta+. to open
- rofi-wayland as a file explorer?
- rofi clipboard history
- rofi shutdown menu
- rofi bluetooth/network menu
- dynamically hide waybar icons?
- waybar update module with topgrade?
- blue transparency all over cuz water
- prioritize being fast
- some sort of way to centralize all your configs easily and BE ABLE TO ADD THEM MANUALLY TOO. so like look in the docsof the random ass package u just installed to find where the config is and add it manually. base on umcli?
- get rid of all the bs packages like the perl shit?? where does perl even come from? is it from UM? is it needed?
- sddm fucky, lightdm pulls in cinnamon and doesnt like sway it says xdg_runtime_dir is not set in the enviornment??
- figure out why fedora sway doesnt pull in seatd? wtf is up with seatd
- fix migration script to include
- wrap swaybg in umcli
- fedora sway uses swaybg which has its images in usr/share/backgrounds/ and has its config (what image sway is using) in the sway config (etc/sway/config)
- lea has that css website for os ui little snippets
- tailwind css is useful?
- umcli thing that tells u all your keybinds (mostly found in sway config i think)
- fix the issue with fedora sway inside gnome boxes being too small. its a hidpi issue. maybe solved with something alogn the lines of spice-display or qemu-ui-spice-app and qemu-ui-spice-core?
- useful for waybar inspo https://github.com/Alexays/Waybar/wiki/Examples
- Include nmtui
- get rid of cinnamon config files
- font awesome 7 gliph copy is useful for waybar and rofi ricing (maybe see if including font awesome 7 pro is okay even if its normally paid cuz um is funny like that)
- change meta+shift+q bidn for closing window in sway config to meta+ q
- move all config files to release package
- get multitouch support for trackpads and not just simulate the 3 buttons at the bottom of the trackpads


Things u need to config:
- waybar
- swaylock
- sway
- swaybg
- swayidle if you wanna make it customish
- rofi and all the other scripts (ties in with waybar)
- greeter (wallpaper will not be the same as swaybg, youll have to configure it manually)

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
