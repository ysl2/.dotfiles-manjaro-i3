# 没什么含义，作为脚本练习暂时储存
ls -lR |grep -v ^d|awk '{print $9}' |tr -s '\n'
