# Created by newuser for 5.8
export EDITOR=nvim

#source ~/.config/zsh/fzf.zsh

# 设置复制粘帖的时候取消幻灯片效果
#DISABLE_MAGIC_FUNCTIONS=true

alias cht="cht.sh"
alias ra="ranger"

# set the affix .zsh can be sourced
unsetopt nomatch

# yusoli: 
# The manjaro original setting
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
