#!/bin/bash
yum install expect -y
yum install -y ftp
wget ftp://159.75.133.49:21/file1.txt --ftp-user=root --ftp-password=wsywsy
wget ftp://159.75.133.49:21/8-1.sh --ftp-user=root --ftp-password=wsywsy
wget https://raw.fastgit.org/50801684/-/master/1-1.sh
sudo chmod 777 *.sh
sudo chmod 777 file.txt
# 写入IP
Server_IP=`curl ifconfig.me`
echo $Server_IP":28888" >> file1.txt
echo $Server_IP":38888" >> file1.txt
echo "" >> file1.txt
# 上传
sh 8-1.sh
