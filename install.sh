#!/bin/bash

apt-get install git
mkdir /opt/raspberry-pi-build-server

scripts=( set-build-repo get-build-repo set-build-frequency  get-build-frequency last-build-time set-build-hook )


for element in ${scripts[@]}
do
	cp "scripts/$element" /opt/raspberry-pi-build-server
	ln -s "/opt/raspberry-pi-build-server/$element" "/usr/bin/$element"
done




