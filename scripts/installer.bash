#!/bin/bash

sudo pacman -Sy --noconfirm polkit polkit-gnome \
                      wget \
                      zsh alacritty bat exa neovim neofetch \
                      sway waybar bemenu swa:ybg swayidle swaylock \
                      mako \
                      fzf \
                      light \
                      bluez bluez-utils blueman \
                      sof-firmware \
                      pipewire pipewire-jack pipewire-alsa pipewire-pulse \
                      pavucontrol \
                      libreoffice-fresh \
                      obsidian gnome-text-editor \
                      papirus-icon-theme \
                      code dbeaver docker \
                      telegram-desktop discord \
                      evince \
                      eog \
                      nautilus \
                      ttf-fira-code ttf-firacode-nerd \ 
                      base-devel clang rustup clangd pnpm \
                      xdg-desktop-portal xdg-desktop-portal-wlr xdg-desktop-portal-gnome \
                      lollypop



echo "Включение multilib"

sudo nano /etc/pacman.conf

sudo pacman -Sy --noconfirm wine-staging \
                      vulkan-icd-loader vulkan-intel lib32-vulkan-intel lib32-vulkan-icd-loader \
                      lib32-alsa-lib lib32-alsa-plugins lib32-libpulse \
                      steam lutris
