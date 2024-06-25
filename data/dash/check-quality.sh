#!/usr/bin/env bash
set -eux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

TARGET_NAME="dash"

# Clang O0
level="O0"
version="15"
echo "## Checking debug quality of \`${TARGET_NAME}\` (Clang ${version}, ${level})"
debuginfo-quality \
  --variables \
  --tsv \
  --regions source-analysis/${TARGET_NAME}.dbgcov \
  --scope-regions \
  --only-computation-regions \
  --range-start-first-defined-region \
  clang/${version}/${level}/${TARGET_NAME}.o \
  > clang/${version}/${level}/${TARGET_NAME}.tsv

# With knowledge extension
debuginfo-quality \
  --variables \
  --tsv \
  --extend-from-baseline \
  --regions source-analysis/${TARGET_NAME}.dbgcov \
  --scope-regions \
  --only-computation-regions \
  --range-start-first-defined-region \
  clang/${version}/${level}/${TARGET_NAME}.o \
  > clang/${version}/${level}/${TARGET_NAME}-efb.tsv

# Clang O0 + mem2reg
level="O0-mem2reg"
version="15"
echo "## Checking debug quality of \`${TARGET_NAME}\` (Clang ${version}, ${level})"
debuginfo-quality \
  --variables \
  --tsv \
  --regions source-analysis/${TARGET_NAME}.dbgcov \
  --scope-regions \
  --only-computation-regions \
  --range-start-first-defined-region \
  clang/${version}/${level}/${TARGET_NAME}.o \
  > clang/${version}/${level}/${TARGET_NAME}.tsv

# With knowledge extension
debuginfo-quality \
  --variables \
  --tsv \
  --extend-from-baseline \
  --regions source-analysis/${TARGET_NAME}.dbgcov \
  --scope-regions \
  --only-computation-regions \
  --range-start-first-defined-region \
  clang/${version}/${level}/${TARGET_NAME}.o \
  > clang/${version}/${level}/${TARGET_NAME}-efb.tsv

# Clang O1+
  levels=(O2 O2 O2 O1 O2 O3)
versions=(12 13 14 15 15 15)

for i in ${!levels[*]}; do
  level=${levels[$i]}
  version=${versions[$i]}
  echo "## Checking debug quality of \`${TARGET_NAME}\` (Clang ${version}, ${level})"
  debuginfo-quality \
    --variables \
    --tsv \
    --regions source-analysis/${TARGET_NAME}.dbgcov \
    --scope-regions \
    --only-computation-regions \
    --range-start-first-defined-region \
    clang/${version}/${level}/${TARGET_NAME}.dwarf \
    > clang/${version}/${level}/${TARGET_NAME}.tsv

  # With knowledge extension
  debuginfo-quality \
    --variables \
    --tsv \
    --extend-from-baseline \
    --regions source-analysis/${TARGET_NAME}.dbgcov \
    --scope-regions \
    --only-computation-regions \
    --range-start-first-defined-region \
    clang/${version}/${level}/${TARGET_NAME}.dwarf \
    > clang/${version}/${level}/${TARGET_NAME}-efb.tsv
done
