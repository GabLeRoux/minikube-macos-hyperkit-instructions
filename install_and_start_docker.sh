#!/usr/bin/env bash

set -x

brew cask install docker

# https://github.com/docker/for-mac/issues/2359
# https://github.com/drud/ddev/issues/575
sudo /Applications/Docker.app/Contents/MacOS/Docker --unattended &

while ! docker system info > /dev/null 2>&1; do
   sleep 1; 
done

docker --version
sudo chmod 777 /var/root/Library /var/root/Library/Containers
sudo chmod ugo+rw /var/run/docker.sock
docker ps
