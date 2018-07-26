#!/usr/bin/env bash

set -x

sudo touch /var/db/dhcpd_leases

# https://github.com/kubernetes/minikube/issues/1926
minikube delete

# https://github.com/jenkins-x/jx#minkube-and-hyperkit-could-not-find-an-ip-address
#ls -l .minikube/machines/minikube/hyperkit.pid
#rm ~/.minikube/machines/minikube/hyperkit.pid
#ls -l .minikube/machines/minikube/hyperkit.pid

# start minikube using hyperkit driver
minikube start --vm-driver hyperkit -v 10

