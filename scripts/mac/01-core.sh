#!/usr/bin/env bash

##
# Install: Command Line Tools for Xcode and Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

##
# Install: Docker (Desktop)
brew install --cask docker

##
# Setup: Docker (Desktop)
docker_app_path="/Applications/Docker.app"
sudo ${docker_app_path}/Contents/MacOS/Docker --unattended --install-privileged-components

##
# Run: Docker (Desktop)
# The "docker" inside of the app appears when Docker Desktop is running.
# https://github.com/docker/for-mac/issues/2359#issuecomment-943131345
open -a "$docker_app_path" --args --unattended --accept-license
while ! "$docker_app_path"/Contents/Resources/bin/docker info &>/dev/null; do sleep 1; done
