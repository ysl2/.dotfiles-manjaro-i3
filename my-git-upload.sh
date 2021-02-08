# 用于上传dotfiles
#----------------------------------------

if [[ -e /home/yusoli/.dotfiles/ ]]; then
	cd /home/yusoli/.dotfiles/
	git pull --ff-only
fi

cd /home/yusoli/.dotfiles-manjaro-i3/
git add . > /dev/null && git commit -m "$(date +"%Y-%m-%d %H:%M:%S")" > /dev/null && git push origin master -q > /dev/null

#sudo powerpill -Sy
