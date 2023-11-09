#!/usr/bin/env bash
set -eux

# Expects to run from replication repo directory
if [ "${PWD##*/}" != "incomplete-debuginfo" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

# Source analysis
echo "## Building (source analysis)"

## Build via `dbgcov` to report source code regions of various kinds
export PATH="${DBGCOV_PATH}:${PATH}"
DBGCOV_OPTS="$(dbgcov-cflags) -save-temps"
for tc in $(find -H testcases -type d -depth 1 | cut -c 11- | sort -n); do
  ${DBGCOV_CC} \
    ${DBGCOV_OPTS} \
    ${CC_SYSROOT_OPTS} \
    -E \
    -o testcases/${tc}/src/clang/a.i \
    testcases/${tc}/src/clang/a.c
done
