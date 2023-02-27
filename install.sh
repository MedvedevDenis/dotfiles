

echo "XDG_SESSION_TYPE=wayland" >> /etc/environment

# Install ly
#
git config --global protocol.file.allow always

systemctl enable ly.service
