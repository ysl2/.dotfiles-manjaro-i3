# 通过此脚本快速执行stow-R进行重新链接
# 需要先安装stow
#------------------------------------

# 这是备份文件夹的默认位置
cd ~/.dotfiles

# 输出所有需要同步的文件夹
for line in $(ls -la |grep -v "^-" | awk '{print $9}' | grep -v "^\."); do
	stow -R $line
done

# 执行每个包自定义的动作
source ~/.zshrc
