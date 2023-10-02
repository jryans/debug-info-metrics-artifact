#!/usr/bin/env bash
set -eux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

TARGET_NAME="tar"

# O0 + mem2reg baseline
level="O0"
version="14"
echo "## Checking debug quality of \`${TARGET_NAME}\` (${level}-${version})"
debuginfo-quality \
  --variables \
  --tsv \
  --range-start-baseline \
  --extend-from-baseline \
  --baseline O0-14-mem2reg/${TARGET_NAME}.o \
  ${level}-${version}-mem2reg/${TARGET_NAME}.o \
  > ${level}-${version}-mem2reg/${TARGET_NAME}-rsb-efb.tsv

# O1+ using above as baseline
  levels=(O1 O1 O1 O2 O3)
versions=(12 13 14 14 14)

for i in ${!levels[*]}; do
  level=${levels[$i]}
  version=${versions[$i]}
  echo "## Checking debug quality of \`${TARGET_NAME}\` (${level}-${version})"
  debuginfo-quality \
    --variables \
    --tsv \
    --range-start-baseline \
    --baseline O0-14-mem2reg/${TARGET_NAME}.o \
    ${level}-${version}/${TARGET_NAME}.dwarf \
    > ${level}-${version}/${TARGET_NAME}-rsb.tsv

  if [ "${level}-${version}" == "O1-14" ]; then
    debuginfo-quality \
      --variables \
      --tsv \
      --range-start-baseline \
      --extend-from-baseline \
      --baseline O0-14-mem2reg/${TARGET_NAME}.o \
      ${level}-${version}/${TARGET_NAME}.dwarf \
      > ${level}-${version}/${TARGET_NAME}-rsb-efb.tsv
  fi
done
