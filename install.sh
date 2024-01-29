#!/bin/bash

set -e

sudo pacman -S base-devel git fish feh sxiv fish pyenv \
               thefuck arandr xcape network-manager-applet \
               blueman noto-fonts-emoji xf86-video-amdgpu \
               xorg xdg-user-dirs xorg-xinit fzf zathura-pdf-mupdf \
               clang llvm nasm qemu-full pavucontrol solaar bluez \
               brightnessctl i3 picom kitty discord \
               noto-fonts stow dunst scrot \
               imagemagick tk dunst scrot pulsemixer power-profiles-daemon

chsh -s /bin/fish $USER

echo "Cleaning up random useless stuff"
cd
rm ~/.bashrc

echo "Installing dots files..."
cd Dots/packages
./stow
cd

echo "Installing YAY..."
git clone https://aur.archlinux.org/yay.git Projects/Yay
cd Projects/Yay && makepkg -si
yay -S yay
cd
rm -rf Projects/Yay

yay -S dmenu2 i3lock-color google-chrome visual-studio-code-bin \
       adw-gtk3 github-cli xfce-polkit ttf-firacode ttf-comic-mono-git

xdg-user-dirs-update --force
