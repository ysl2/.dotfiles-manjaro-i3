# 此脚本用于初始化oh-my-zsh

#---------------------------------------
# 通过github推荐的方式安装ohmyzsh
# 在安装之前要改DNS
#---------------------------------------
cd ~

if [[ -d ".oh-my-zsh" ]]; then
	echo "已经有ohmyzsh了,不用再次安装"
else
	sh -c "$(wget -qO- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi


## 也可以通过git方式安装
#git clone https://hub.fastgit.org/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh


#---------------------------------------
# 安装所有插件
#---------------------------------------
cd ~/.oh-my-zsh/custom/plugins

# 语法高亮
if [[ -d "zsh-syntax-highlighting" ]]; then
	echo "zsh-syntax-highlighting已经安装过了，不用再次安装"
else
	git clone https://hub.fastgit.org/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

# 自动补全
if [[ -d "zsh-autosuggestions" ]]; then
	echo "zsh-autosuggestions已经安装过了，不用再次安装"
else
	git clone https://hub.fastgit.org/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
fi

# incr
if [[ -d incr ]]; then
	echo "incr已经安装过了，不用再次安装"
else
	git clone https://hub.fastgit.org/makeitjoe/incr.zsh.git $ZSH_CUSTOM/plugins/incr
fi



#---------------------------------------
# 通过stow同步自定义设置
#---------------------------------------
# 此处没有处理冲突
if [[ ! -L "~/.zshrc" ]]; then
	cd ~/.dotfiles
	stow -R zsh
fi

# 刷新设置
if [[ -L ~/.zshrc ]]; then
	source ~/.zshrc
	chsh -s /bin/zsh
else
	echo "stow同步配置失败"
fi
