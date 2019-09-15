#!/bin/bash
sleep 3

wait_on_pod () {
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
  local -r pid="${1}"
  local -r delay='0.75'
  local spinstr='\|/-'
  local temp
  echo -n "K8S Starting"
  wait_on_pod /tmp/launch.sh
  echo " -- K8S Started"
  echo -n "Cloning Rook"
  wait_on_pod /tmp/rk_clone
  echo " -- Rook Cloned"
  echo -n "Starting Rook Common"
  wait_on_pod /tmp/rk_common
  echo " -- Rook Common Done"
  echo " - Let's get Rook installed and running"
  if [[ $DO_RK_CEPH == "true" ]]; then
    echo "Start Ceph"
    echo -n "Wait on ceph-operator"
    wait_on_pod /tmp/rook-ceph-rook-ceph-operator
    echo -n "Wait on rook-discover"
    wait_on_pod /tmp/rook-ceph-rook-discover
    echo -n "Wait on csi-cephfsplugin-provisioner"
    wait_on_pod /tmp/rook-ceph-csi-cephfsplugin-provisioner
    echo -n "Wait on csi-rbdplugin-provisioner"
    wait_on_pod /tmp/rook-ceph-csi-rbdplugin-provisioner
    echo -n "Wait on ceph-agent"
    wait_on_pod /tmp/rook-ceph-rook-ceph-agent
    echo -n "Wait on rook-ceph-tools"
    wait_on_pod /tmp/rook-ceph-rook-ceph-tools
    echo -n "Wait on rook-ceph-osd"
    wait_on_pod /tmp/rook-ceph-rook-ceph-osd
    echo -n "Wait on ceph-mon"
    wait_on_pod /tmp/rook-ceph-rook-ceph-mon
    echo -n "Wait on rook-ceph-mgr"
    wait_on_pod /tmp/rook-ceph-rook-ceph-mgr
    echo -n "Wait on rook-ceph-mds"
    wait_on_pod /tmp/rook-ceph-rook-ceph-mds
  fi
  echo "Rook Installed"
  echo "Start Step 2"
  echo "Start MySQL"
  echo -n "Wait on pvc claim mysql-pv-claim"
  wait_on_pod /tmp/pvc_claim-mysql-pv-claim
  echo "MySQL started"
  echo "Start WP"
  echo -n "Wait on pvc claim wp-pv-claim"
  wait_on_pod /tmp/pvc_claim-wp-pv-claim
  echo "WP started"
}

show_progress
