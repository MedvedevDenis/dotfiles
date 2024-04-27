#!/bin/bash

echo "Включение multilib"

sudo nano /etc/pacman.conf

sudo pacman -Sy --noconfirm wine-staging \
    vulkan-icd-loader lib32-vulkan-icd-loader \
    vulkan-intel lib32-vulkan-intel \
    nvidia-utils lib32-nvidia-utils \
    vulkan-radeon lib32-vulkan-radeon \
    lib32-pipewire lib32-alsa-lib lib32-alsa-plugins lib32-libpulse \
    lib32-gst-plugins-base lib32-gst-plugins-good \
    steam \
    lutris \
    retroarch retroarch-xmb libretro
