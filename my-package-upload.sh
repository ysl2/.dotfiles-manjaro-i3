mkdir -p .MY-PACKAGE-LIST
mkdir -p .MY-PACKAGE-LIST/i3
cd .MY-PACKAGE-LIST/i3

if [[ ! -f "my-pacman-list.txt" ]]; then
	touch my-pacman-list.txt
	touch my-yay-list.txt
	touch my-pip-list.txt
fi

sudo pacman -Qeq > my-pacman-list.txt
yay -Qeq > my-yay-list.txt
pip list | awk '{print $1}' > my-pip-list.txt
