#!/bin/sh
GIST_URL='https://gist.githubusercontent.com/joshuacox/30c0b0871622b233195a8bb5229ee5e4/raw/11be34e2fbd1f62cd5fd5b2833fb75cf2f929046/gistfile1.txt'
launch.sh
date '+%s' > /tmp/launch.sh
echo 'done' >> /tmp/launch.sh
kubectl cluster-info
curl -s $GIST_URL -o bootstrap
bash bootstrap
