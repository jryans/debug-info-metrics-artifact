#!/usr/bin/env bash
set -eux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

TARGET_NAME="git"

# Clang O0 (baseline can't be used here)
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

# Clang O0 + mem2reg baseline
level="O0-mem2reg"
version="15"
echo "## Checking debug quality of \`${TARGET_NAME}\` (Clang ${version}, ${level})"
debuginfo-quality \
  --variables \
  --tsv \
  --baseline clang/15/O0-mem2reg/${TARGET_NAME}.o \
  --range-start-baseline \
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
  --baseline clang/15/O0-mem2reg/${TARGET_NAME}.o \
  --range-start-baseline \
  --extend-from-baseline \
  --regions source-analysis/${TARGET_NAME}.dbgcov \
  --scope-regions \
  --only-computation-regions \
  --range-start-first-defined-region \
  clang/${version}/${level}/${TARGET_NAME}.o \
  > clang/${version}/${level}/${TARGET_NAME}-efb.tsv

# Clang O1+ using above as baseline
  levels=(O1 O2 O1 O2 O1 O2 O1 O2 O3 O1 O2 O1 O2)
versions=(12 12 13 13 14 14 15 15 15 16 16 17 17)

for i in ${!levels[*]}; do
  level=${levels[$i]}
  version=${versions[$i]}
  echo "## Checking debug quality of \`${TARGET_NAME}\` (Clang ${version}, ${level})"
  debuginfo-quality \
    --variables \
    --tsv \
    --baseline clang/15/O0-mem2reg/${TARGET_NAME}.o \
    --range-start-baseline \
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
    --baseline clang/15/O0-mem2reg/${TARGET_NAME}.o \
    --range-start-baseline \
    --extend-from-baseline \
    --regions source-analysis/${TARGET_NAME}.dbgcov \
    --scope-regions \
    --only-computation-regions \
    --range-start-first-defined-region \
    clang/${version}/${level}/${TARGET_NAME}.dwarf \
    > clang/${version}/${level}/${TARGET_NAME}-efb.tsv
done

# GCC

  levels=(Og O1 O2 Og O1 O2 Og O1 O2 O0 Og O1 O2 O3)
versions=(10 10 10 11 11 11 12 12 12 13 13 13 13 13)

for i in ${!levels[*]}; do
  level=${levels[$i]}
  version=${versions[$i]}
  echo "## Checking debug quality of \`${TARGET_NAME}\` (GCC ${version}, ${level})"
  debuginfo-quality \
    --variables \
    --tsv \
    --regions source-analysis/${TARGET_NAME}.dbgcov \
    --scope-regions \
    --only-computation-regions \
    --range-start-first-defined-region \
    gcc/${version}/${level}/${TARGET_NAME}.dwarf \
    > gcc/${version}/${level}/${TARGET_NAME}.tsv

  # With knowledge extension
  debuginfo-quality \
    --variables \
    --tsv \
    --regions source-analysis/${TARGET_NAME}.dbgcov \
    --scope-regions \
    --only-computation-regions \
    --range-start-first-defined-region \
    --extend-from-baseline \
    gcc/${version}/${level}/${TARGET_NAME}.dwarf \
    > gcc/${version}/${level}/${TARGET_NAME}-efb.tsv
done
