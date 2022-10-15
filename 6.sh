#!/bin/bash

wget https://raw.fastgit.org/50801684/-/master/5.sh
wget ftp://159.75.133.49:21/file.txt --ftp-user=root --ftp-password=wsywsy
wget https://raw.fastgit.org/50801684/-/master/7.sh
bash -c "$(curl -sS wget https://raw.fastgit.org/50801684/-/master/4.sh)"


./4.sh -d 
echo "安装完成"
