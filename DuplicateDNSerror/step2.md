## Health Check

Check on the cluster

`kubectl cluster-info`{{execute}}

### Get All Nodes

`kubectl get nodes`{{execute}}

## Create a secret with an underscore

`kubectl create secret generic slack_hook --from-literal=xpack.notification.slack.account.monitoring.secure_url='https://hooks.slack.com/services/asdasdasd/asdasdas/asdasd'`{{execute}}
