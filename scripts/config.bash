#!/bin/bash

cd ~/dotfiles

cp .zshrc /home/${USER}

cp -r alacritty /home/${USER}/.config/alacritty
cp -r lazygit /home/${USER}/.config/lazygit
cp -r mako /home/${USER}/.config/mako
cp -r mc /home/${USER}/.config/mc
cp -r neofetch /home/${USER}/.config/neofetch
cp -r sway /home/${USER}/.config/sway
cp -r waybar /home/${USER}/.config/waybar


git clone https://github.com/catppuccin/alacritty.git ~/.config/alacritty/catppuccin
