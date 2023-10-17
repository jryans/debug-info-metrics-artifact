#!/usr/bin/env bash
set -eux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

TARGET_NAME="tar"

# O0 (baseline can't be used here)
level="O0"
version="15"
echo "## Checking debug quality of \`${TARGET_NAME}\` (${level}-${version})"
debuginfo-quality \
  --variables \
  --tsv \
  --regions source-analysis/${TARGET_NAME}.dbgcov \
  --scope-regions \
  --only-computation-regions \
  --range-start-first-defined-region \
  ${level}-${version}/${TARGET_NAME}.o \
  > ${level}-${version}/${TARGET_NAME}.tsv

# With knowledge extension
debuginfo-quality \
  --variables \
  --tsv \
  --extend-from-baseline \
  --regions source-analysis/${TARGET_NAME}.dbgcov \
  --scope-regions \
  --only-computation-regions \
  --range-start-first-defined-region \
  ${level}-${version}/${TARGET_NAME}.o \
  > ${level}-${version}/${TARGET_NAME}-efb.tsv

# O0 + mem2reg baseline
level="O0"
version="15-mem2reg"
echo "## Checking debug quality of \`${TARGET_NAME}\` (${level}-${version})"
debuginfo-quality \
  --variables \
  --tsv \
  --baseline O0-15-mem2reg/${TARGET_NAME}.o \
  --range-start-baseline \
  --regions source-analysis/${TARGET_NAME}.dbgcov \
  --scope-regions \
  --only-computation-regions \
  --range-start-first-defined-region \
  ${level}-${version}/${TARGET_NAME}.o \
  > ${level}-${version}/${TARGET_NAME}.tsv

# With knowledge extension
debuginfo-quality \
  --variables \
  --tsv \
  --baseline O0-15-mem2reg/${TARGET_NAME}.o \
  --range-start-baseline \
  --extend-from-baseline \
  --regions source-analysis/${TARGET_NAME}.dbgcov \
  --scope-regions \
  --only-computation-regions \
  --range-start-first-defined-region \
  ${level}-${version}/${TARGET_NAME}.o \
  > ${level}-${version}/${TARGET_NAME}-efb.tsv

# O1+ using above as baseline
  levels=(O2 O2 O2 O1 O2 O3)
versions=(12 13 14 15 15 15)

for i in ${!levels[*]}; do
  level=${levels[$i]}
  version=${versions[$i]}
  echo "## Checking debug quality of \`${TARGET_NAME}\` (${level}-${version})"
  debuginfo-quality \
    --variables \
    --tsv \
    --baseline O0-15-mem2reg/${TARGET_NAME}.o \
    --range-start-baseline \
    --regions source-analysis/${TARGET_NAME}.dbgcov \
    --scope-regions \
    --only-computation-regions \
    --range-start-first-defined-region \
    ${level}-${version}/${TARGET_NAME}.dwarf \
    > ${level}-${version}/${TARGET_NAME}.tsv

  # With knowledge extension
  debuginfo-quality \
    --variables \
    --tsv \
    --baseline O0-15-mem2reg/${TARGET_NAME}.o \
    --range-start-baseline \
    --extend-from-baseline \
    --regions source-analysis/${TARGET_NAME}.dbgcov \
    --scope-regions \
    --only-computation-regions \
    --range-start-first-defined-region \
    ${level}-${version}/${TARGET_NAME}.dwarf \
    > ${level}-${version}/${TARGET_NAME}-efb.tsv
done
