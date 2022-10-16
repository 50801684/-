Server_IP=`curl ifconfig.me`
echo $Server_IP":28888" >> file.txt
echo $Server_IP":38888" >> file.txt
expect 5.sh
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://v5w42gif.mirror.aliyuncs.com"]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker

docker run -d --name=wxed -e LISTEN_ADDR=":28888" --restart=always --privileged --net=host --tmpfs /run --tmpfs /tmp -v /opt:/storage:rw registry.cn-chengdu.aliyuncs.com/wzy_111/wxedge
docker run -d --name=wxedge name=wxed -e LISTEN_ADDR=":38888" --restart=always --privileged --net=host --tmpfs /run --tmpfs /tmp -v /opt:/storage:rw registry.cn-chengdu.aliyuncs.com/wzy_111/wxedge
