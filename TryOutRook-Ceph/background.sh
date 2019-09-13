#!/bin/bash
source /usr/local/bin/set-env.sh
GIST_URL='https://gist.githubusercontent.com/joshuacox/30c0b0871622b233195a8bb5229ee5e4/raw/d54e4b05149cceb39d88e2651072986b8aac8ab3/gistfile1.txt'
launch.sh
date '+%s' > /tmp/launch.sh
echo 'done' >> /tmp/launch.sh
sleep 1
kubectl cluster-info
curl -s $GIST_URL -o bootstrap
bash bootstrap
