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
# Version:   0.0.1


function has_command() {
  return [ command -v $1> /dev/null ]
}
