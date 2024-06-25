#!/usr/bin/env bash
set -eux

if [ "${PWD##*/}" != "libpng" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

echo "## Preparing \`libpng\`"

# Configure
# Dependency tracking causes trouble for coverage wrappers, disable for now
# Focus on dynamic library only, disable static variant
./configure \
  --disable-dependency-tracking \
  --disable-static
