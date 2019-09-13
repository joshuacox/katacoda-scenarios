#!/bin/bash

wait_on_thing () {
  local -r pid="${1}"
  local -r delay='0.75'
  local spinstr='\|/-'
  local temp
  what_to_wait_for=$1
  while true; do
    sudo grep -i "done" $what_to_wait_for  &> /dev/null
    if [[ "$?" -ne 0 ]]; then
      temp="${spinstr#?}"
      printf " [%c]  " "${spinstr}"
      spinstr=${temp}${spinstr%"${temp}"}
      sleep "${delay}"
      printf "\b\b\b\b\b\b"
    else
      break
    fi
  done
  printf "    \b\b\b\b"
  echo ""
}

show_progress()
{
  wait_on_thing /tmp/launch.sh
  wait_on_thing /tmp/cloned.done
  wait_on_thing /tmp/docker.built
}

show_progress
