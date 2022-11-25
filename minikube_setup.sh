#!/bin/bash

# note that in case of minikube on mac, the kubernetes cluster is running on a VM.
# we need to make the directories available on the VM before being able to create a local storage of them

# postgresql requires to use uid 1018 and gid 1018 for its folder permissions
minikube mount postgres/:/postgres/ --uid 1018 --gid 1018

# quay requires to use uid 1001 and gid 1001 for its folder permissions
minikube mount quay/:/quay/ --uid 1001 --gid 1001

# if we want to run kubectl / docker commands, we need to set the environment
eval $(minikube docker-env)

# the same goes for podman, but I have used the docker engine for this installation
# eval $(minikube podman-env)

# the dashboard is a very handy tool
minikube dashboard &

