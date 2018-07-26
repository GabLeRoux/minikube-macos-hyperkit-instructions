#!/usr/bin/env bash

git clone https://github.com/moby/hyperkit
cd hyperkit
make

brew install docker
docker --version

ls -la build/hyperkit
chmod +x build/hyperkit
mv build/hyperkit /usr/local/bin/

