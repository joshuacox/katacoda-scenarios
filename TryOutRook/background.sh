#!/bin/sh
GIST_URL='https://gist.github.com/joshuacox/30c0b0871622b233195a8bb5229ee5e4/raw/57e3b0f8ac8539f9f534d2d57ac738df1cc5ea99/gistfile1.txt'
launch.sh
date '+%s' > /tmp/launch.sh
echo 'done' >> /tmp/launch.sh
kubectl cluster-info
curl -s $GIST_URL -o bootstrap
bash bootstrap
