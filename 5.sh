#!/usr/bin/expect
expect 7.sh
spawn scp -r file.txt root@159.75.133.49:/root/ 
expect "*password:" {send "wsyWSY3526039.\r"}
interact

