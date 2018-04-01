#!/bin/bash

rm -rf /opt/raspberry-pi-build-server

scripts=( build-now set-build-repo get-build-repo set-build-frequency  get-build-frequency last-build-time set-build-hook get-build-hook )


for element in ${scripts[@]}
do
        rm "/usr/bin/$element"
done




