#!/usr/bin/env bash

brew install docker minikube
brew install https://raw.githubusercontent.com/jacobwgillespie/homebrew-core/56ddf54dafcfa0668c2e9491c9183ee5accb1217/Formula/docker-machine-driver-hyperkit.rb
sudo chown root:wheel /usr/local/bin/docker-machine-driver-hyperkit && sudo chmod u+s /usr/local/bin/docker-machine-driver-hyperkit

