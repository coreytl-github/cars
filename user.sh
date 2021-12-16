#!/bin/sh

git clone https://github.com/coreytl-github/dotfiles.git ~/
rm ~/README.md
rm -rf ~/.git
doas pacman -Syyu
doas pacman -S xorg xorg-xinit bspwm dunst kitty neovim picom polybar sxhkd zsh
chsh /bin/zsh
make ~/.local/src/dmenu
doas make install ~/.local/src/dmenu
git clone https://gitlab.com/dwt1/wallpapers.git ~/.config/wallpapers
mkdir ~/dl
mkdir ~/docs
mkdir ~/music
mkdir ~/pix
echo "Install should be complete, please restart"
