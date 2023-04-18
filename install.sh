

echo "XDG_SESSION_TYPE=wayland" >> /etc/environment

# Install ly
#
git config --global protocol.file.allow always

systemctl enable ly.service

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
