#!/bin/sh
HOST='waws-prod-sn1-003.ftp.azurewebsites.windows.net '
USER='$open-cart'
PASSWD='b0v22TwzoPtv7ESsnfyT74xoFZZjPawpRbsuZ9kfd4jGBeaLE4q2wXT7xoXH'

ftp -ivn $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
binary
mput *
quit
END_SCRIPT
