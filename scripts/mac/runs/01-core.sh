#!/usr/bin/env bash
#
# dev-machine: mac setup
#
# 01-core: base/core setup
#
# Author:    Michael Thompson <actionscripted@gmail.com>
# License:   MIT
# Requires:  TODO: requirements
# Usage:     TODO: usage

# Fail on (u)nset variables
set -u

# Load code to test
source "$(dirname $0)/lib.sh"

# Variables
docker_app_path="/Applications/Docker.app"


# TODO: add event/hook: CORE-BEFORE
# TODO: add event/hook: CORE-BEFORE


# TODO: support homebrew version check
# TODO: run a brew update?
if ! has_command "brew"; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi


if ! has_command "docker"; then
  echo "Installing Docker..."
  brew install --cask docker
  sudo ${docker_app_path}/Contents/MacOS/Docker --unattended --install-privileged-components
fi


# The "docker" inside of the app appears when Docker Desktop is running.
# https://github.com/docker/for-mac/issues/2359#issuecomment-943131345
# TODO: support docker version check
if ! docker info > /dev/null 2>&1; then
  echo "Starting Docker..."
  open -a "${docker_app_path}" --args --unattended --accept-license
  while ! "${docker_app_path}"/Contents/Resources/bin/docker info &>/dev/null; do
    sleep 1
  done
fi


# TODO: add event/hook: CORE-AFTER
# TODO: add event/hook: CORE-AFTER
