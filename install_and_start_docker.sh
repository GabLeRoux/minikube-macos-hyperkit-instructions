#!/usr/bin/env bash

set -x

brew cask install docker

open --background -a Docker
docker --version

while ! docker system info > /dev/null 2>&1; do
   sleep 1; 
done

