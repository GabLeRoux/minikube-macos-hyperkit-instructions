#!/usr/bin/env bash

sudo touch /var/db/dhcpd_leases
csrutil status

# https://github.com/kubernetes/minikube/issues/1926
minikube delete

# start minikube using hyperkit driver
minikube start --vm-driver=hyperkit

