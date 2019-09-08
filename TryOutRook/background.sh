#!/bin/sh
GIST_URL='https://gist.githubusercontent.com/joshuacox/30c0b0871622b233195a8bb5229ee5e4/raw/bebd4f509596df910f5ad052ce0c870901019090/gistfile1.txt'
launch.sh
date '+%s' > /tmp/launch.sh
echo 'done' >> /tmp/launch.sh
kubectl cluster-info
curl -s $GIST_URL -o bootstrap
bash bootstrap
