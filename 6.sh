#!/bin/bash

bash -c "$(curl -sS wget https://raw.fastgit.org/50801684/-/master/4.sh)"
bash -c "$(curl -sS wget https://raw.fastgit.org/50801684/-/master/5.sh)"
bash -c "$(curl -sS wget https://raw.fastgit.org/50801684/-/master/6.sh)"

./4.sh -d 
echo "安装完成"
