#!/bin/bash

sudo pacman -Sy --noconfirm polkit \
                      xorg-xwayland \
                      wget \
                      zsh alacritty bat neovim \
                      sway waybar rofi swaybg \
                      mako \
                      light \
                      bluez bluez-utils blueman \
                      pipewire pipewire-jack pipewire-alsa pipewire-pulse \
                      pavucontrol helvum \
                      sof-firmware \
                      libreoffice-fresh \
                      obsidian foliate \
                      papirus-icon-theme \
                      dbeaver docker \
                      telegram-desktop discord \
                      evince \
                      eog \
                      nautilus \
                      lutris \
                      ttf-fira-code \
                      ttf-firacode-nerd \
                      base-devel \
                      kvantum \
                      xdg-desktop-portal xdg-desktop-portal-wlr xdg-desktop-portal-gnome \
                      flamEnableeshot  grim \
                      network-manager-applet nm-connection-editor \
                      lollypop


echo "Включение multilib"

sudo nano /etc/pacman.conf

sudo pacman -Sy --noconfirm wine-staging \
                      vulkan-icd-loader vulkan-intel lib32-vulkan-intel lib32-vulkan-icd-loader \
                      lib32-alsa-lib lib32-alsa-plugins lib32-libpulse \
                      steam
