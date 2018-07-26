#!/usr/bin/env bash

set -x

sudo touch /var/db/dhcpd_leases
csrutil status

# https://github.com/kubernetes/minikube/issues/1926
minikube delete

minikube version
echo OS: `cat /etc/os-release`
echo VM driver: `grep DriverName ~/.minikube/machines/minikube/config.json`
echo ISO version `grep -i ISO ~/.minikube/machines/minikube/config.json`

# https://github.com/jenkins-x/jx#minkube-and-hyperkit-could-not-find-an-ip-address
#ls -l .minikube/machines/minikube/hyperkit.pid
#rm ~/.minikube/machines/minikube/hyperkit.pid
#ls -l .minikube/machines/minikube/hyperkit.pid

# start minikube using hyperkit driver
minikube start --vm-driver=hyperkit

minikube logs
