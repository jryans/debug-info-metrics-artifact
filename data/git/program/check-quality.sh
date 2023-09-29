#!/usr/bin/env bash
set -eux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

BUILT_PROGRAM_NAME="git"

# O0 + mem2reg baseline
level="O0"
version="15"
echo "## Checking debug quality of \`${BUILT_PROGRAM_NAME}\` (${level}-${version})"
debuginfo-quality \
  --variables \
  --tsv \
  --baseline O0-15-mem2reg/${BUILT_PROGRAM_NAME}.o \
  --range-start-baseline \
  --regions source-analysis/${BUILT_PROGRAM_NAME}.dbgcov \
  --scope-regions \
  --only-computation-regions \
  --range-start-first-defined-region \
  ${level}-${version}-mem2reg/${BUILT_PROGRAM_NAME}.o \
  > ${level}-${version}-mem2reg/${BUILT_PROGRAM_NAME}.tsv

# With knowledge extension
debuginfo-quality \
  --variables \
  --tsv \
  --baseline O0-15-mem2reg/${BUILT_PROGRAM_NAME}.o \
  --range-start-baseline \
  --extend-from-baseline \
  --regions source-analysis/${BUILT_PROGRAM_NAME}.dbgcov \
  --scope-regions \
  --only-computation-regions \
  --range-start-first-defined-region \
  ${level}-${version}-mem2reg/${BUILT_PROGRAM_NAME}.o \
  > ${level}-${version}-mem2reg/${BUILT_PROGRAM_NAME}-efb.tsv

# O1+ using above as baseline
  levels=(O1 O1 O1 O1 O2 O3)
versions=(12 13 14 15 15 15)

for i in ${!levels[*]}; do
  level=${levels[$i]}
  version=${versions[$i]}
  echo "## Checking debug quality of \`${BUILT_PROGRAM_NAME}\` (${level}-${version})"
  debuginfo-quality \
    --variables \
    --tsv \
    --baseline O0-15-mem2reg/${BUILT_PROGRAM_NAME}.o \
    --range-start-baseline \
    --regions source-analysis/${BUILT_PROGRAM_NAME}.dbgcov \
    --scope-regions \
    --only-computation-regions \
    --range-start-first-defined-region \
    ${level}-${version}/${BUILT_PROGRAM_NAME}.dwarf \
    > ${level}-${version}/${BUILT_PROGRAM_NAME}.tsv

  # With knowledge extension
  debuginfo-quality \
    --variables \
    --tsv \
    --baseline O0-15-mem2reg/${BUILT_PROGRAM_NAME}.o \
    --range-start-baseline \
    --extend-from-baseline \
    --regions source-analysis/${BUILT_PROGRAM_NAME}.dbgcov \
    --scope-regions \
    --only-computation-regions \
    --range-start-first-defined-region \
    ${level}-${version}/${BUILT_PROGRAM_NAME}.dwarf \
    > ${level}-${version}/${BUILT_PROGRAM_NAME}-efb.tsv
done
