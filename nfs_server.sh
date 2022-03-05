#!/bin/bash/ -x

#Sharig system

sudo apt-get update

sudo apt update

sudo apt upgrade

sudo apt-get upgrade

sudo apt install nfs-kernel-server

ls

sudo mkdir -p /mnt/nfsdir

sudo chown nobody:nogroup /mnt/nfsdir

sudo chmod 777 /mnt/nfsdir

sudo vi /etc/exports

sudo exportfs -a

sudo systemctl restart nfs-kernel-server

sudo ufw allow from [13.111.147.56] 3000

sudo ufw status

# client system

sudo apt-get update

sudo apt update

sudo apt upgrade

sudo apt-get upgrade

sudo apt install nfs-common

sudo mkdir -p /mnt/nfsdir_client

sudo mount host_IP:/mnt/nfsdir /mnt/nfsdir_client

sudo umount /mnt/nfsdir_client

sudo vim /etc/fstab


