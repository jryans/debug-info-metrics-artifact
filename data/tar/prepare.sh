#!/usr/bin/env bash
set -eux

if [ "${PWD##*/}" != "tar" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

# Requires newer version of GNU Bison
export PATH="/usr/local/opt/bison/bin:$PATH"

echo "## Preparing \`tar\`"

# Bootstrap
./bootstrap

# Configure
# TODO: Work out why `configure` fails to set `-liconv` itself
# Dependency tracking causes trouble for coverage wrappers, disable for now
./configure \
  --disable-dependency-tracking \
  CFLAGS="${CC_SYSROOT_OPTS}" \
  LDFLAGS="-liconv" \
  MAKEINFO=true
