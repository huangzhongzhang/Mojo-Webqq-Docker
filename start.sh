#!/bin/bash

rm -f /tmp/mojo_webqq_*
nohup /usr/local/perl/bin/perl login.pl &
sleep 5
./viewqr /tmp/mojo_webqq_qrcode_default.png
tail -100f nohup.out