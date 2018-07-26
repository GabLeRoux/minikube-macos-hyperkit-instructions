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

ls -l .minikube/machines/minikube/hyperkit.pid

# start minikube using hyperkit driver
minikube start --vm-driver=hyperkit

minikube logs
