#!/bin/bash

apt-get install git
mkdir /opt/raspberry-pi-build-server
mkdir /opt/raspberry-pi-build-server/scripts
mkdir /opt/raspberry-pi-build-server/repo

cp uninstall.sh /opt/raspberry-pi-build-server
cp build-app.sh /opt/raspberry-pi-build-server

scripts=( build-now set-build-repo get-build-repo set-build-frequency  get-build-frequency last-build-time set-build-hook get-build-hook )


for element in ${scripts[@]}
do
	cp "scripts/$element" /opt/raspberry-pi-build-server/scripts
	ln -s "/opt/raspberry-pi-build-server/scripts/$element" "/usr/bin/$element"
done

cp -r data /opt/raspberry-pi-build-server


