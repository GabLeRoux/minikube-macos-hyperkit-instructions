#!/usr/bin/env bash

FORMULA_URL=https://raw.githubusercontent.com/jacobwgillespie/homebrew-core/docker-machine-driver-hyperkit/Formula/docker-machine-driver-hyperkit.rb
DRIVER_BINARY_PATH=/usr/local/bin/docker-machine-driver-hyperkit

brew cask install minikube docker
brew install $FORMULA_URL
sudo chown root:wheel $DRIVER_BINARY_PATH
sudo chmod u+s $DRIVER_BINARY_PATH

