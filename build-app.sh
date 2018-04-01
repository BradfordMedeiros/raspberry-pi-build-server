#/usr/bin/env bash

raspberry_path=/opt/raspberry-pi-build-server
github_repo=$(get-build-repo)

cd $raspberry_path

clone_directory_path="$raspberry_path/repo"
(
	git clone "$github_repo" "$clone_directory_path"
        cd "$clone_directory_path"
	./build-raspberry.sh
	build_hook_script=$(get-build-hook)
	$build_hook_script
        rm -rf "$clone_directory_path"
)

