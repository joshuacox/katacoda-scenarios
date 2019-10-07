#!/bin/bash
GIST_URL='https://gist.github.com/joshuacox/30c0b0871622b233195a8bb5229ee5e4/raw/9930d1e7329ebf4a5ef9c6d4009e20ce302dae29/gistfile1.txt'
sleep 1
wait_for_exist () {
  countzero=0
  while true; do
    if [[ -e  $1 ]]; then
      break
    elif [[ $counzero > 30 ]]; then
      echo "$1 has not been created, investigate"
    fi
    sleep 1
    ((++countzero))
  done
}
wait_for_exist /usr/local/bin/set-env.bash
source /usr/local/bin/set-env.bash
launch.sh
date '+%s' > /tmp/launch.sh
echo 'done' >> /tmp/launch.sh
sleep 1
kubectl cluster-info
curl -s $GIST_URL -o bootstrap
bash bootstrap 1>/tmp/bootstrap.log 2/tmp/bootstrap.err
