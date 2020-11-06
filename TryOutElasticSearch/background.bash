#!/bin/bash
. /usr/local/bin/set-env.bash
#docker run -d --name elasticsearch --net somenetwork -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:tag
echo 'done' >> /tmp/docker.built
