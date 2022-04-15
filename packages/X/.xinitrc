#setxkbmap us qwerty-fr

source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

mkdir -p "$HOME"/.local/share/keyrings

xrdb -load .Xressources &
xinput set-prop "Synaptics TM3075-002" "libinput Tapping Enabled" 1 &
numlockx &
exec i3
