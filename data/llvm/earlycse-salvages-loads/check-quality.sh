#!/usr/bin/env bash
set -eux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

TARGET_NAME="example"

levels=(O2 O2-fixed)

for i in ${!levels[*]}; do
  level=${levels[$i]}
  echo "## Checking debug quality of \`${TARGET_NAME}\` (Clang ${level})"
  debuginfo-quality \
    --variables \
    --tsv \
    --regions ${TARGET_NAME}.dbgcov \
    --scope-regions \
    --only-computation-regions \
    --range-start-first-defined-region \
    ${TARGET_NAME}-${level}.o \
    > ${TARGET_NAME}-${level}.tsv
done