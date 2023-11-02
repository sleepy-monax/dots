# see https://unix.stackexchange.com/a/295652/332452
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

# see https://wiki.archlinux.org/title/Polkit#Authentication_agents
/usr/lib/xfce-polkit/xfce-polkit &

# see https://wiki.archlinux.org/title/GNOME/Keyring#xinitrc
eval $(/usr/bin/gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

# see https://github.com/NixOS/nixpkgs/issues/14966#issuecomment-520083836
mkdir -p "$HOME"/.local/share/keyrings

# Use .Xressources.hdipi if the screen resolution is high enough
if [ "$(xrandr | grep -oP ' connected [0-9]+x[0-9]+[+][0-9]+[+][0-9]+' | grep -oP '[0-9]+x[0-9]+' | grep -oP '[0-9]+')" -gt 2048 ]; then
  xrdb -load .Xressources.hdpi
else
  xrdb -load .Xressources
fi

# Start Ibus
# see https://wiki.archlinux.org/title/IBus
ibus-daemon -rxR &
xinput set-prop "Synaptics TM3075-002" "libinput Tapping Enabled" 1
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1
numlockx &

exec i3
