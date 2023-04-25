#!/bin/bash

sudo sh -c 'echo  "XDG_SESSION_TYPE=wayland"' >> /etc/environment
sudo sh -c 'echo  "XDG_SESSION_DESKTOP=sway"' >> /etc/environment
sudo sh -c 'echo  "XDG_CURRENT_DESKTOP=sway"' >> /etc/environment
sudo sh -c 'echo  "GTK_THEME=Catppuccin-Mocha-Standard-Lavender-Dark"' >> /etc/environment
sudo sh -c 'echo  "_JAVA_AWT_WM_NONREPARENTING=1"' >> /etc/environment
sudo sh -c 'echo  "QT_QPA_PLATFORM=wayland"' >> /etc/environment


sudo pacman -Sy --noconfirm polkit \
                      xorg-xwayland \
                      zsh alacritty neovim \
                      sway waybar rofi swaylock swaybg \
                      mako\
                      light \
                      bluez bluez-utils blueman \
                      pipewire pipewire-jack pipewire-alsa pipewire-pulse \
                      pavucontrol helvum \
                      sof-firmware \
                     
                      libreoffice-fresh \ 
                      qalculate-gtk \
                      obsidian \
                      papirus-icon-theme \
                      dbeaver \
                      flameshot \
                      telegram-desktop discord \
                      evince \
                      eog \
                      nautilus \
                      lutris \
                      docker \
                      ttf-fira-code \
                      ttf-firacode-nerd 

cd ~

rm -rf .oh-my-zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

cd /opt
sudo rm -rf yay-git

sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R ${USER}:${USER} ./yay-git
cd yay-git
makepkg -si
yay -Syu

cd ~

git config --global protocol.file.allow always

yay -S ly \
       microsoft-edge-stable-bin \
       visual-studio-code-bin \
       catppuccin-gtk-theme-mocha \
       autotiling \
       swaylock-effects-git \
       musikcube  \
       cava
       
systemctl enable ly.service
systemctl enable bluetooth
systemctl enable docker

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
git clone https://github.com/catppuccin/rofi
cd rofi/basic
bash install.sh
cd ~
rm -rf rofi
