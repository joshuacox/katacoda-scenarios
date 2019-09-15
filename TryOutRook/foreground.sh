#!/bin/bash
sleep 1
wait_for_exist () {
  countzero=0
  while (true) {
    if [[ -e  $1 ]]; then
      break
    elif [[ $counzero > 30 ]]; then
      echo "$1 has not been created, investigate"
    fi
    sleep 1
    ((++countzero))
  }
}
wait_for_exist /usr/local/bin/set-env.sh
source /usr/local/bin/set-env.sh
wait_for_exist /usr/local/bin/waiter
bash /usr/local/bin/waiter
