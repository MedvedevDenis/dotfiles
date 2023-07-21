#!/bin/bash

cd ~/dotfiles
cp .zshrc /home/${USER}

cp -r alacritty /home/${USER}/.config/alacritty
cp -r gtk-3.0 /home/${USER}/.config/
cp -r gtk-4.0 /home/${USER}/.config/
cp -r lazygit /home/${USER}/.config/lazygit
cp -r mako /home/${USER}/.config/mako
cp -r mc /home/${USER}/.config/mc
cp -r neofetch /home/${USER}/.config/neofetch
cp -r rofi /home/${USER}/.config/rofi
cp -r sway /home/${USER}/.config/sway
cp -r waybar /home/${USER}/.config/waybar


cd ~
rm -rf rofi
git clone https://github.com/catppuccin/rofi
cd rofi/basic
bash install.sh
cd ~
rm -rf rofi


git clone https://github.com/catppuccin/alacritty.git ~/.config/alacritty/catppuccin