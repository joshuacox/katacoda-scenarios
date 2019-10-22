#!/bin/bash
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
wait_for_exist /usr/local/bin/waiter
/usr/local/bin/waiter
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
