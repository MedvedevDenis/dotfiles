
pacman -S sway
pacman -S waybar
pacman -S rof
pacman -S wofi
pacman -S swaylock
pacman -S mako
pacman -S light
pacman -S bluez bluez-utils btusb
pacman -S pipewore pipewire-jack
pacman -S sof-firmware

pacman -S evince
pacman -S libreoffice-fresh
pacman -S qalculate-gtk
# Install ly
#
git config --global protocol.file.allow always

yay -S ly


yay -S telegram-desktop-bin
yay -S microsoft-edge-stable-bin
yay -S catppuccin-gtk-theme-mocha

systemctl enable ly.service
