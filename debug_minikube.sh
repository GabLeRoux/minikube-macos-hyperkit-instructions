#!/usr/bin/env bash

minikube logs
csrutil status
minikube version
echo OS: `cat /etc/os-release`
echo VM driver: `grep DriverName ~/.minikube/machines/minikube/config.json`
echo ISO version `grep -i ISO ~/.minikube/machines/minikube/config.json`
