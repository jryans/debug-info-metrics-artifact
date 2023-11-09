#!/usr/bin/env bash
set -eux

# Expects to run from program source directory
if [ "${PWD##*/}" != "earlycse-salvages-loads" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../../vars.sh"

export LLVM_COMPILER="clang"
export LLVM_COMPILER_PATH="$(llvm release-clang-lldb-15.0.0)/bin"

TARGET_NAME="example"
TARGET_PATH="${TARGET_NAME}"

# Source analysis
echo "## Building \`${TARGET_NAME}\` (source analysis)"

## Build via `dbgcov` to report source code regions of various kinds
export PATH="${DBGCOV_PATH}:${PATH}"
DBGCOV_OPTS="$(dbgcov-cflags) -save-temps"
${DBGCOV_CC} \
  ${DBGCOV_OPTS} ${CC_SYSROOT_OPTS} \
  -E \
  -o example.i \
  example.c

## Collect deduplicated source code regions
## Using `LC_ALL=C` gives ~10x performance boost
( \
  export LC_ALL=C; \
  find . -name '*.dbgcov' | \
  xargs cat | \
  sort -u \
  > "${SCRIPT_DIR}/${TARGET_NAME}.dbgcov" \
)
