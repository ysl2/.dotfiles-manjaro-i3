sudo rm /etc/pacman.conf 
sudo ln -s /home/yusoli/.dotfiles/.MY-GLOBAL-SETTINGS/pacman.conf /etc/pacman.conf

sudo rm /etc/hosts
sudo ln -s /home/yusoli/.dotfiles/.MY-GLOBAL-SETTINGS/hosts /etc/hosts

#sudo rm /etc/makepkg.conf
#sudo ln -s /home/yusoli/.dotfiles/.MY-GLOBAL-SETTINGS/makepkg.conf /etc/makepkg.conf

sudo rm /etc/pacman.d/mirrorlist
sudo ln -s /home/yusoli/.dotfiles/.MY-GLOBAL-SETTINGS/pacman.d/mirrorlist /etc/pacman.d/mirrorlist

# These 2 line must be appended at last:
sudo rm /etc/powerpill/powerpill.json 
sudo ln -s /home/yusoli/.dotfiles/.MY-GLOBAL-SETTINGS/powerpill/powerpill.json /etc/powerpill/powerpill.json
