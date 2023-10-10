#!/usr/bin/env bash
set -eux

if [ "${PWD##*/}" != "dash" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

echo "## Preparing \`dash\`"

# Bootstrap
./autogen.sh

# Configure
# Dependency tracking causes trouble for coverage wrappers, disable for now
./configure \
  --disable-dependency-tracking
