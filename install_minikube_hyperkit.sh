#!/usr/bin/env bash

FORMULA_URL=https://raw.githubusercontent.com/jacobwgillespie/homebrew-core/docker-machine-driver-hyperkit/Formula/docker-machine-driver-hyperkit.rb
DRIVER_BINARY_PATH=/usr/local/bin/docker-machine-driver-hyperkit

brew cask install minikube
brew install $FORMULA_URL

# ensure binary is linked
brew unlink docker-machine-driver-hyperkit && brew link docker-machine-driver-hyperkit

# Caveats: This driver requires superuser privileges to access the hypervisor. To enable, execute
sudo chown root:wheel $DRIVER_BINARY_PATH
sudo chmod u+s $DRIVER_BINARY_PATH

