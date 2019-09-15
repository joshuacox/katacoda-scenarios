#!/bin/bash
source /usr/local/bin/set-env.sh
GIST_URL='https://gist.githubusercontent.com/joshuacox/30c0b0871622b233195a8bb5229ee5e4/raw/bac4db5727c4c5ef498475e4fc22908126020c2b/gistfile1.txt'
launch.sh
date '+%s' > /tmp/launch.sh
echo 'done' >> /tmp/launch.sh
sleep 1
kubectl cluster-info
curl -s $GIST_URL -o bootstrap
bash bootstrap
