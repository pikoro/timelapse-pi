#!/bin/bash

ftp -inv 192.168.1.1 << EOF
user anonymous
cd volume9
put $1 $(basename $1)
bye
EOF
