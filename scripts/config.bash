#!/bin/bash

cd ~/dotfiles

cp .zshrc /home/${USER}


cp -r .config/alacritty /home/${USER}/.config/alacritty
cp -r .config/lazygit /home/${USER}/.config/lazygit
cp -r .config/mako /home/${USER}/.config/mako
cp -r .config/mc /home/${USER}/.config/mc
cp -r .config/neofetch /home/${USER}/.config/neofetch
cp -r .config/sway /home/${USER}/.config/sway
cp -r .config/swaylock /home/${USER}/.config/swaylock
cp -r .config/waybar /home/${USER}/.config/waybar


mkdir tmp
cd tmp

git clone https://github.com/catppuccin/alacritty &&  cp ./alacritty/catppuccin-mocha.toml $HOME/.config/alacritty
git clone https://github.com/catppuccin/waybar && cp ./waybar/themes/mocha.css $HOME/.config/waybar
git clone https://github.com/catppuccin/btop && cp ./btop/themes/catppuccin_mocha.theme $HOME/.config/btop/themes
git clone https://github.com/catppuccin/i3 && cp ./i3/themes/catppuccin-mocha $HOME/.config/sway
git clone https://github.com/catppuccin/mc && mkdir -p $HOME/.local/share/mc/skins && cp ./mc/catppuccin.ini $HOME/.local/share/mc/skins

cd ..
rm -rf tmp