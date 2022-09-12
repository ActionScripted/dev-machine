#!/usr/bin/env bash
#
# dev-machine: mac scripting library
#
# Functions that can be used in Mac scripting.
#
# Author:    Michael Thompson <actionscripted@gmail.com>
# License:   MIT
# Requires:  TODO: requirements
# Usage:     TODO: usage


function has_command() {
  # See if a command exists or not.
  #
  # Example:
  #   `if has_command "foo"; then echo "HAS FOO" fi`
  command -v $1> /dev/null
}
