#!/bin/bash

cd /tmp
rm -f mojo_webqq_* nohup.out
nohup perl /root/login.pl &
sleep 5
/root/viewqr /tmp/mojo_webqq_qrcode_default.png
tail -f nohup.out