# 用于上传dotfiles
#----------------------------------------
git add . > /dev/null && git commit -m "$(date +"%Y-%m-%d %H:%M:%S")" > /dev/null && git push origin master -q > /dev/null

#sudo powerpill -Sy
