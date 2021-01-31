#!/bin/sh
#echo "hello" > /home/yusoli/temp-log.txt
#echo "$(date +"%Y-%m-%d %H:%M:%S")" >> /home/yusoli/temp-log.txt
#if [[ -e /root/.config/rclone/rclone.conf ]]; then
#	sudo rm /root/.config/rclone/rclone.conf
#fi
#
#if [[ -e /root/.config/rclone ]]; then
#	sudo rm -r /root/.config/rclone/
#fi

#sudo mkdir -p /root/.config
#sudo mkdir -p /root/.config/rclone
#sudo cp /home/yusoli/.config/rclone/rclone.conf /root/.config/rclone/rclone.conf
#sudo mkdir -p /home/yusoli/Public/onedrive-qq
/usr/bin/rclone mount onedrive-qq: /home/yusoli/Public/onedrive-qq/ --config=/home/yusoli/.config/rclone/rclone.conf --copy-links --no-gzip-encoding --no-check-certificate --allow-other --allow-non-empty --vfs-cache-mode writes --umask 000 &
#echo "$(date +"%Y-%m-%d %H:%M:%S")" >> /home/yusoli/temp-log.txt
exit 0

