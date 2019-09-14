#!/bin/bash
. /usr/local/bin/set-env.bash
echo 'done' >> /tmp/launch.sh
sleep 1
git clone --depth=1 https://github.com/getzola/zola.git
echo 'done' >> /tmp/cloned.done
cd zola
cp -a test_site ../
docker build -t getzola/zola-bin .
cd -
cd test_site
echo 'FROM getzola/zola-bin' > Dockerfile
echo 'COPY . /zola-test' >> Dockerfile
echo 'WORKDIR /zola-test' >> Dockerfile
docker build -t getzola/zola-test .
echo 'done' >> /tmp/docker.built
