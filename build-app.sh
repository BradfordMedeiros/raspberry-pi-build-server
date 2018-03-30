#/usr/bin/env bash

github_repo=$(get-build-repo)


clone_directory_path=/opt/raspberry-pi-build-server/repo

(
	cd "$clone_directory_path"
	git clone "$github_repo" "$clone_directory_path"
        ./build-raspberry.sh
)
