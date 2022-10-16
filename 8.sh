#!/bin/sh
ftp -v -n 159.75.133.49<<EOF
user root wsywsy
passive
binary
put $1 $2
bye
EOF