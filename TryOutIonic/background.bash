#!/bin/bash
. /usr/local/bin/set-env.bash
git config --global user.email "testy@mctesterson.com"
git config --global user.name "Testy McTesterson"
npm i -g ionic
echo 'done' >> /tmp/ionic-installed.sh
echo 'done' >> /tmp/launch.sh
sleep 1
