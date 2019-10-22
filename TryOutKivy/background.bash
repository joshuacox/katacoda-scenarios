#!/bin/bash
. /usr/local/bin/set-env.bash
git config --global user.email "testy@mctesterson.com"
git config --global user.name "Testy McTesterson"
# This is very slow, using the pip installation method instead
#sudo apt-get -y install python3-kivy
pip install kivy kivy_examples
echo 'done' >> /tmp/kivy-installed.sh
echo 'done' >> /tmp/launch.sh
sleep 1
