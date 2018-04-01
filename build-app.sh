#/usr/bin/env bash

github_repo=$(get-build-repo)

clone_directory_path=/opt/raspberry-pi-build-server/repo
(
	git clone "$github_repo" "$clone_directory_path"
        cd "$clone_directory_path"
	./build-raspberry.sh
	build_hook_script=$(get-build-hook)
	$build_hook_script
        rm -rf "$clone_directory_path"
)

