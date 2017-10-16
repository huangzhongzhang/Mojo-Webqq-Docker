#!/usr/bin/env bash
set -x;
docker stop Mojo-Webqq;
docker rm Mojo-Webqq;
docker build -t mojo-webqq .;
docker images|grep none|awk '{print $3 }'|xargs docker rmi;
docker run -t --name Mojo-Webqq --env MOJO_WEBQQ_LOG_ENCODING=utf8 -p 5011:5011 -v /tmp:/tmp -v /root:/root mojo-webqq;
tail -f /tmp/nohup.out;