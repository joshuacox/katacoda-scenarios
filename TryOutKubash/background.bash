#!/bin/bash
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
git config --global user.email "testy@example.com"
git config --global user.name "Testy McTesterson"
echo 'done' >> /tmp/launch.sh
sleep 1
