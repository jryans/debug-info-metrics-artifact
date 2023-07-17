#!/usr/bin/env bash
set -eux

# Expects to run from program source directory
if [ "${PWD##*/}" != "git" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../../vars.sh"

export LLVM_COMPILER="clang"
export LLVM_COMPILER_PATH="$(llvm release-clang-lldb-15.0.0)/bin"

BUILT_PROGRAM_NAME="git"
BUILT_PROGRAM_PATH="${BUILT_PROGRAM_NAME}"

# O0

level="O0"
version="15"
echo "## Building \`${BUILT_PROGRAM_NAME}\` (${level}-${version})"

make clean
git clean -f

## Build for O0
make CC=wllvm CFLAGS="${CC_COMMON_OPTS} ${CC_O0_OPTS}"

## Extract bitcode for O0
extract-bc ${BUILT_PROGRAM_PATH}
mkdir -p "${SCRIPT_DIR}/${level}-${version}"
cp \
  ${BUILT_PROGRAM_PATH}.bc \
  "${SCRIPT_DIR}/${level}-${version}/"

## Compile O0 bitcode to object file
$(llvm release-clang-lldb-${version}.0.0 llc) \
  -${level} \
  -o "${SCRIPT_DIR}/${level}-${version}/${BUILT_PROGRAM_NAME}.o" \
  --filetype obj \
  "${SCRIPT_DIR}/${level}-${version}/${BUILT_PROGRAM_NAME}.bc"

## Apply mem2reg only
mkdir -p "${SCRIPT_DIR}/${level}-${version}-mem2reg"
$(llvm release-clang-lldb-${version}.0.0 opt) \
  -o "${SCRIPT_DIR}/${level}-${version}-mem2reg/${BUILT_PROGRAM_NAME}.bc" \
  --mem2reg \
  "${SCRIPT_DIR}/${level}-${version}/${BUILT_PROGRAM_NAME}.bc"

## Compile O0 plus mem2reg bitcode to object file
$(llvm release-clang-lldb-${version}.0.0 llc) \
  -${level} \
  -o "${SCRIPT_DIR}/${level}-${version}-mem2reg/${BUILT_PROGRAM_NAME}.o" \
  --filetype obj \
  "${SCRIPT_DIR}/${level}-${version}-mem2reg/${BUILT_PROGRAM_NAME}.bc"

# O1+

  levels=(O1 O1 O1 O1 O2 O3)
versions=(12 13 14 15 15 15)

for i in ${!levels[*]}; do
  level=${levels[$i]}
  version=${versions[$i]}
  echo "## Building \`${BUILT_PROGRAM_NAME}\` (${level}-${version})"

  make clean
  git clean -f

  ## Build
  cc_level_opts="CC_${level}_OPTS"
  make \
    CC="$(llvm release-clang-lldb-${version}.0.0 clang)" \
    CFLAGS="${CC_COMMON_OPTS} ${!cc_level_opts}"

  ## Gather debug info
  dsymutil --flat "${BUILT_PROGRAM_PATH}"
  mkdir -p "${SCRIPT_DIR}/${level}-${version}"
  cp \
    "${BUILT_PROGRAM_PATH}.dwarf" \
    "${SCRIPT_DIR}/${level}-${version}/"
done

# Cleanup
echo "## Cleanup"
make clean
git clean -f
