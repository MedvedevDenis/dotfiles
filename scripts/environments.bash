#!/bin/bash

echo  "XDG_SESSION_TYPE=wayland" >> /etc/environment
echo  "XDG_SESSION_DESKTOP=sway" >> /etc/environment
echo  "XDG_CURRENT_DESKTOP=sway" >> /etc/environment

echo  "GTK_THEME=Catppuccin-Mocha-Standard-Lavender-Dark:dark" >> /etc/environment
echo  "_JAVA_AWT_WM_NONREPARENTING=1" >> /etc/environment
echo  "QT_QPA_PLATFORM=wayland" >> /etc/environment

echo  "MOZ_ENABLE_WAYLAND=1" >> /etc/environment
echo  "SDL_VIDEODRIVER=wayland" >> /etc/environment