#!/bin/bash

wait_on_pod () {
  what_to_wait_for=$1
  echo -n "Wait on $what_to_wait_for"
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
  echo "Starting"
  local -r pid="${1}"
  local -r delay='0.75'
  local spinstr='\|/-'
  local temp
  echo "K8S Starting"
  wait_on_pod /tmp/launch.sh
  echo "K8S Started"
  echo "Cloning Rook"
  wait_on_pod /tmp/rk_clone
  echo "Rook Cloned"
  echo "Step 1"
  echo "Let's get Rook installed and running"
  wait_on_pod /tmp/rook-cephrook-ceph-operator
  wait_on_pod /tmp/rook-cephrook-ceph-agent
  wait_on_pod /tmp/rook-cephrook-ceph-mds
  wait_on_pod /tmp/rook-cephrook-ceph-mgr
  wait_on_pod /tmp/rook-cephrook-ceph-mon
  wait_on_pod /tmp/rook-cephrook-ceph-osd
  wait_on_pod /tmp/rook-cephrook-ceph-tools
  wait_on_pod /tmp/rook-cephrook-discover
  wait_on_pod /tmp/rook-cephcsi-cephfsplugin-provisioner
  wait_on_pod /tmp/rook-cephcsi-rbdplugin-provisioner
  wait_on_pod /tmp/rk_step1
  echo "Rook Installed"
  echo "Step 1 finished"
  echo "Start Step 2"
  echo "Start MySQL"
  wait_on_pod /tmp/pvc_claim-mysql-pvc-claim
  echo "MySQL started"
  echo "Start WP"
  wait_on_pod /tmp/pvc_claim-wp-pv-claim
  echo "WP started"
  wait_on_pod /tmp/rk_step2
  echo "Step 2 finished"
}

show_progress
