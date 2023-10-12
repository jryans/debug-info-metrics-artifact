#!/usr/bin/env bash
set -eux

if [ "${PWD##*/}" != "flint" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

echo "## Preparing \`libflint\`"

# Bootstrap
./bootstrap.sh

# Configure
# Add required dependencies
# Dependency tracking causes trouble for coverage wrappers, disable for now
# Focus on dynamic library only, disable static variant
# Disable debugging and optimisation defaults
DEFAULT_OPTS="-funroll-loops -pedantic -std=c11 -Werror=implicit-function-declaration -Wall"
./configure \
  --with-gmp=$(brew --prefix gmp) \
  --with-mpfr=$(brew --prefix mpfr) \
  --disable-dependency-tracking \
  --disable-static \
  --disable-debug \
  CFLAGS="${DEFAULT_OPTS}"

# Dependency tracking `configure` option doesn't seem to work
# Remove the flags manually
replace '\-MMD.*$' '' Makefile