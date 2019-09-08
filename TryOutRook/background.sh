#!/bin/sh
GIST_URL='https://gist.githubusercontent.com/joshuacox/30c0b0871622b233195a8bb5229ee5e4/raw/782769a0a59f63793a1792cced40be4885713cfa/gistfile1.txt'
launch.sh
date '+%s' > /tmp/launch.sh
echo 'done' >> /tmp/launch.sh
kubectl cluster-info
curl -s $GIST_URL -o bootstrap
bash bootstrap
