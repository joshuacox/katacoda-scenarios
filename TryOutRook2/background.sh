#!/bin/sh
launch.sh
date '+%s' > /tmp/launch.sh
echo 'done' >> /tmp/launch.sh
kubectl cluster-info
curl -s https://gist.githubusercontent.com/joshuacox/30c0b0871622b233195a8bb5229ee5e4/raw/fc8c9f7eebc863012c4d93960e1d5a146929704c/gistfile1.txt -o bootstrap
bash bootstrap
