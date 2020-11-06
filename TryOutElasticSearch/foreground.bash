#!/bin/bash
sleep 1
. /usr/local/bin/set-env.bash
/usr/local/bin/waiter
docker run -d --name elasticsearch --net somenetwork -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:tag
docker ps
