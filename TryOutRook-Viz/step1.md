## Launch Cluster

First let's launch the kubernetes cluster.

BREAKAGE:

this should hang on this step:
```
Wait on pvc claim mysql-pvc-claim [|]
```

on second terminal 

```
master $ kubectl get pods -n rook-ceph
NAME                                            READY   STATUS RESTARTS   AGE
csi-cephfsplugin-brhjn                          3/3     Running     0     7m39s
csi-cephfsplugin-provisioner-589459c948-75n5h   4/4     Running     1     7m39s
csi-cephfsplugin-provisioner-589459c948-bbg2x   4/4     Running     0     7m39s
csi-rbdplugin-j4lnm                             3/3     Running     0     7m39s
csi-rbdplugin-provisioner-5fb646f58-hk2fw       5/5     Running     1     7m39s
csi-rbdplugin-provisioner-5fb646f58-sxljk       5/5     Running     1     7m39s
rook-ceph-agent-5gc8z                           1/1     Running     0     7m39s
rook-ceph-mds-myfs-a-6f8db9867f-thfhm           1/1     Running     0     5m9s
rook-ceph-mds-myfs-b-744b5bc659-ppddz           1/1     Running     0     5m9s
rook-ceph-mgr-a-6f8d4f6c85-vpgpz                1/1     Running     0     6m2s
rook-ceph-mon-a-54ff99dfb7-7nvxg                1/1     Running     0     6m24s
rook-ceph-operator-6f556bcbff-26fm6             1/1     Running     0     8m10s
rook-ceph-osd-0-65d5f7bcb4-dts74                1/1     Running     0     5m24s
rook-ceph-osd-prepare-node01-7rtdm              0/1     Completed   0     5m30s
rook-ceph-tools-7f49d67b7f-lg4d9                1/1     Running     0     7m39s
rook-discover-8dcj4                             1/1     Running     0     7m41s
```
