#!/bin/sh
ftp -n<<!
open 159.75.133.49
user root wsywsy
binary
cd /
lcd /root/
prompt
put file.txt file.txt
close
bye
!

