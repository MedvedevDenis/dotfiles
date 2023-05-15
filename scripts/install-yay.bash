#!/bin/bash

cd ~
rm -rf yay-git
git clone https://aur.archlinux.org/yay-git.git
sudo chown -R ${USER}:users ./yay-git
cd yay-git
makepkg -si
yay -Syu
cd ~
rm -rf yay-git