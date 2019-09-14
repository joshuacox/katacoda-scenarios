#!/bin/bash
. /usr/local/bin/set-env.bash
echo 'done' >> /tmp/launch.sh
sleep 1
git clone --depth=1 https://github.com/getzola/zola.git
echo 'done' >> /tmp/cloned.done
cd zola
docker build -t getzola/zola-test .
echo 'done' >> /tmp/docker.built
