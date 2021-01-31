sudo mkdir -p /etc/rc.local.d
for i in $(ls /etc/rc.local.d/); do
	sudo rm /etc/rc.local.d/$i
done
sudo ln -s ~/.dotfiles/.MY-AUTOLOAD-SERVICES/rc.local.d/* /etc/rc.local.d/
