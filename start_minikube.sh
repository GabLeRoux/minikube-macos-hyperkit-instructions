#!/usr/bin/env bash

# https://github.com/kubernetes/minikube/issues/1926
minikube delete

# start minikube using hyperkit driver
minikube start --vm-driver=hyperkit

