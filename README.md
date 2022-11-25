# local_quay
local quay.io installation on minikube (on mac)

The contents in this repo are basically following the steps on 

https://github.com/quay/quay/blob/master/docs/quick-local-deployment.md

to get it up and running, prepare the minikube environment (see minikube_setup.sh)
and run `kubectl create -f .k8s --save-config`

It might make sense to apply the templates bottom up, ie volumes first, then deployments and then the services.

