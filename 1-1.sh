docker rm -f wxedge
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://v5w42gif.mirror.aliyuncs.com"]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker

docker run --name=wxedge -e PLACE=CTKS --restart=always --privileged --net=host --tmpfs /run --tmpfs /tmp -e REC=false -e LISTEN_ADDR=":18888" -v /opt:/storage:rw --log-opt max-size=50m -d registry.cn-chengdu.aliyuncs.com/wzy_111/wxedge:2.4.1
docker run --name=opt -e PLACE=CTKS --restart=always --privileged --net=host --tmpfs /run --tmpfs /tmp -e REC=false -e LISTEN_ADDR=":28888" -v /opt/1:/storage:rw --log-opt max-size=50m -d registry.cn-chengdu.aliyuncs.com/wzy_111/wxedge:2.4.1
docker run --name=mnt -e PLACE=CTKS --restart=always --privileged --net=host --tmpfs /run --tmpfs /tmp -e REC=false -e LISTEN_ADDR=":38888" -v /mnt:/storage:rw --log-opt max-size=50m -d registry.cn-chengdu.aliyuncs.com/wzy_111/wxedge:2.4.1
rm -f *.sh
rm -f *.txt
echo "安装完成"


