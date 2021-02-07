mkdir -p /home/yusoli/.dotfiles/.MY-PACKAGE-LIST
mkdir -p /home/yusoli/.dotfiles/.MY-PACKAGE-LIST/i3
cd /home/yusoli/.dotfiles/.MY-PACKAGE-LIST/i3

if [[ ! -f "my-pacman-list.txt" ]]; then
	touch my-pacman-list.txt
	touch my-yay-list.txt
	touch my-pip-list.txt
fi

sudo pacman -Qeq > my-pacman-list.txt
yay -Qeq > my-yay-list.txt
pip list | awk '{print $1}' > my-pip-list.txt

cd /home/yusoli/.dotfiles/
git add . > /dev/null && git commit -m "$(date +"%Y-%m-%d %H:%M:%S")" > /dev/null && git push origin master -q > /dev/null
