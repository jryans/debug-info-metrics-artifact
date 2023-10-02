#!/usr/bin/env bash
set -eux

# Expects to run from program source directory
if [ "${PWD##*/}" != "tar" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../../vars.sh"

# Requires newer version of GNU Bison
export PATH="/usr/local/opt/bison/bin:$PATH"

export LLVM_COMPILER="clang"
export LLVM_COMPILER_PATH="$(llvm release-clang-lldb-14.0.0)/bin"

TARGET_NAME="tar"
TARGET_PATH="src/${TARGET_NAME}"

# O0

level="O0"
version="14"
echo "## Building \`${TARGET_NAME}\` (${level}-${version})"

make clean
git clean -f

## Build for O0
make CC=wllvm CFLAGS="${CC_COMMON_OPTS} ${CC_O0_OPTS}"

## Extract bitcode for O0
extract-bc ${TARGET_PATH}
mkdir -p "${SCRIPT_DIR}/${level}-${version}"
cp \
  ${TARGET_PATH}.bc \
  "${SCRIPT_DIR}/${level}-${version}/"

## Compile O0 bitcode to object file
$(llvm release-clang-lldb-${version}.0.0 llc) \
  -${level} \
  -o "${SCRIPT_DIR}/${level}-${version}/${TARGET_NAME}.o" \
  --filetype obj \
  "${SCRIPT_DIR}/${level}-${version}/${TARGET_NAME}.bc"

## Apply mem2reg only
mkdir -p "${SCRIPT_DIR}/${level}-${version}-mem2reg"
$(llvm release-clang-lldb-${version}.0.0 opt) \
  -o "${SCRIPT_DIR}/${level}-${version}-mem2reg/${TARGET_NAME}.bc" \
  --mem2reg \
  "${SCRIPT_DIR}/${level}-${version}/${TARGET_NAME}.bc"

## Compile O0 plus mem2reg bitcode to object file
$(llvm release-clang-lldb-${version}.0.0 llc) \
  -${level} \
  -o "${SCRIPT_DIR}/${level}-${version}-mem2reg/${TARGET_NAME}.o" \
  --filetype obj \
  "${SCRIPT_DIR}/${level}-${version}-mem2reg/${TARGET_NAME}.bc"

# O1+

  levels=(O1 O1 O1 O2 O3)
versions=(12 13 14 14 14)

for i in ${!levels[*]}; do
  level=${levels[$i]}
  version=${versions[$i]}
  echo "## Building \`${TARGET_NAME}\` (${level}-${version})"

  make clean
  git clean -f

  ## Build
  cc_level_opts="CC_${level}_OPTS"
  make \
    CC="$(llvm release-clang-lldb-${version}.0.0 clang)" \
    CFLAGS="${CC_COMMON_OPTS} ${!cc_level_opts}"

  ## Gather debug info
  dsymutil --flat "${TARGET_PATH}"
  mkdir -p "${SCRIPT_DIR}/${level}-${version}"
  cp \
    "${TARGET_PATH}.dwarf" \
    "${SCRIPT_DIR}/${level}-${version}/"
done

# Cleanup
echo "## Cleanup"
make clean
git clean -f
