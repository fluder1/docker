#! /bin/bash
# Script to run eclipse via Docker container
# @Alan Fluder

# check for docker and install if not found
dpkg -s docker >> /dev/null || sudo apt-get install docker
# clone docker-eclipse image if not found
[ -d docker-eclipse ] || git clone https://github.com/fgrehm/docker-eclipse.git
# allow docker image access to X server
xhost +local:fgrehm/eclipse >> /dev/null
# run container
sudo ./docker-eclipse/eclipse >> /dev/null
