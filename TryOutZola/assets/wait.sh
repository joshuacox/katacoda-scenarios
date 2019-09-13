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
  echo -n 'Wait on Launch'
  wait_on_thing /tmp/launch.sh
  echo ' Launched'
  echo -n 'Wait on clone'
  wait_on_thing /tmp/cloned.done
  echo ' Cloned'
  echo -n 'Wait on docker to build'
  wait_on_thing /tmp/docker.built
  echo ' Built'
}

show_progress
