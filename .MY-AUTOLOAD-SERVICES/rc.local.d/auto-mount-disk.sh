#!/bin/sh

# For real machine
#sudo mkdir -p /home/yusoli/Public/sda1
#sudo mount /dev/sda1 /home/yusoli/Public/sda1
#sudo mkdir -p /home/yusoli/Public/sda5
#sudo mount /dev/sda5 /home/yusoli/Public/sda5
#sudo mkdir -p /home/yusoli/Public/sda6
#sudo mount /dev/sda6 /home/yusoli/Public/sda6

# For virtual machine
sudo mkdir -p /media/cdrom
sudo mount /dev/cdrom/media/cdrom
exit 0
