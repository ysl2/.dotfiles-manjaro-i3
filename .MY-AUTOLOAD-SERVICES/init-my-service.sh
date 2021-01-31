# 把所有自己想要开机自启的脚本都放在~/.dotfiles/.MY-AUTOLOAD-SERVICES/rc.local.d路径下

#--------------------------------------------------
# 注意：服务不能用软链接表示，必须是真实文件。其他的无所谓
sudo cp ~/.dotfiles/.MY-AUTOLOAD-SERVICES/assets/rc-local.service /usr/lib/systemd/system/rc-local.service
sudo ln -s ~/.dotfiles/.MY-AUTOLOAD-SERVICES/assets/rc.local /etc/
sudo mkdir -p /etc/rc.local.d
sudo ln -s ~/.dotfiles/.MY-AUTOLOAD-SERVICES/rc.local.d/* /etc/rc.local.d/

sudo systemctl daemon-reload
sudo systemctl enable rc-local.service
