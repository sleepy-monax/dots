#!/bin/bash

set -e

sudo pacman -S base-devel git fish feh sxiv fish pyenv \
               thefuck arandr xcape network-manager-applet \
               blueman noto-fonts-emoji xf86-video-amdgpu \
               xorg xdg-user-dirs xorg-xinit fzf zathura-pdf-mupdf \
               clang llvm nasm qemu-full pavucontrol solaar bluez \
               brightnessctl i3 picom kitty discord ttf-firacode \
               ttf-comic-mono-git noto-fonts stow dunst scrot \
               imagemagick tk dunst scrot

chsh -s /bin/fish $USER

echo "Installing dots files..."
git clone https://github.com/sleepy-monax/Dots Workspace/Dots
cd Workspace/Dots/packages
rm ~/.bashrc
./stow
cd

echo "Installing YAY..."
git clone https://aur.archlinux.org/yay.git Workspace/Yay
cd Workspace/Yay && makepkg -si
yay -S yay
cd
rm Workspace/Yay

yay -S dmenu2 i3lock-color google-chrome visual-studio-code-bin \
       adw-gtk3 github-cli

xdg-user-dirs-update
