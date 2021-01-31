# 一键清除自己刚才设置的rc-local.service相关的东西
sudo systemctl stop rc-local.service
sudo systemctl disable rc-local.service
sudo rm /usr/lib/systemd/system/rc-local.service
sudo rm /etc/rc.local
for i in $(ls /etc/rc.local.d); do
	sudo rm /etc/rc.local.d/$i
done
sudo rm -r /etc/rc.local.d
sudo systemctl daemon-reload
