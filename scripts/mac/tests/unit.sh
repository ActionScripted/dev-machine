#!/usr/bin/env bash
#
# dev-machine: mac scripting tests
#
# Author:    Michael Thompson <actionscripted@gmail.com>
# License:   MIT
# Requires:  TODO: requirements
# Usage:     TODO: usage

# Fail on (u)nset variables
set -u

# Load code to test
source "$(dirname $0)/../lib.sh"


function test_has_command() {
  assertFalse 'has_command "8675309"'
  assertTrue 'has_command "bash"'
}


# Run tests
source ${DM_PATH_SHUNIT}
