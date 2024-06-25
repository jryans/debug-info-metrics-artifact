#!/usr/bin/env bash
set -eux

# Expects to run from program source directory
if [ "${PWD##*/}" != "ffmpeg" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

export LLVM_COMPILER="clang"
export LLVM_COMPILER_PATH="$(llvm release-clang-lldb-15.0.0)/bin"

TARGET_NAME="ffmpeg"
TARGET_PATH="${TARGET_NAME}"

# Source analysis
echo "## Building \`${TARGET_NAME}\` (source analysis)"

make clean
git clean -f

## Build via `dbgcov` to report source code regions of various kinds
export PATH="${DBGCOV_PATH}:${PATH}"
DBGCOV_OPTS="$(dbgcov-cflags) -save-temps"
## Defines below are attempting find a common subset of
## headers that can be processed in both Clang and GCC
HEADER_OPTS+="-I ./compat/atomics/dummy "
HEADER_OPTS+="-D SDL_DISABLE_IMMINTRIN_H "
HEADER_OPTS+="-D SDL_DISABLE_XMMINTRIN_H "
HEADER_OPTS+="-D SDL_DISABLE_EMMINTRIN_H "
HEADER_OPTS+="-D SDL_DISABLE_PMMINTRIN_H "
make \
  CC="${DBGCOV_CC}" \
  ECFLAGS="${DBGCOV_OPTS} ${CC_SYSROOT_OPTS} ${HEADER_OPTS}"

## Collect deduplicated source code regions
mkdir -p "${SCRIPT_DIR}/source-analysis"
## Using `LC_ALL=C` gives ~10x performance boost
( \
  export LC_ALL=C; \
  find . -name '*.dbgcov' | \
  xargs cat | \
  sort -u \
  > "${SCRIPT_DIR}/source-analysis/${TARGET_NAME}.dbgcov" \
)

# Clang O0

level="O0"
version="15"
echo "## Building \`${TARGET_NAME}\` (Clang ${version}, ${level})"

make clean
git clean -f

## Build for O0
make \
  CC=wllvm \
  ECFLAGS="${CC_COMMON_OPTS} ${CC_CLANG_OPTS} ${CC_O0_OPTS}"

## Extract bitcode for O0
extract-bc ${TARGET_PATH}
mkdir -p "${SCRIPT_DIR}/clang/${version}/${level}"
cp \
  ${TARGET_PATH}.bc \
  "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}.bc"

## Compile O0 bitcode to object file
$(llvm release-clang-lldb-${version}.0.0 llc) \
  -${level} \
  -o "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}.o" \
  --filetype obj \
  "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}.bc"

## Apply mem2reg only
mkdir -p "${SCRIPT_DIR}/clang/${version}/${level}-mem2reg"
$(llvm release-clang-lldb-${version}.0.0 opt) \
  -o "${SCRIPT_DIR}/clang/${version}/${level}-mem2reg/${TARGET_NAME}.bc" \
  --mem2reg \
  "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}.bc"

## Compile O0 plus mem2reg bitcode to object file
$(llvm release-clang-lldb-${version}.0.0 llc) \
  -${level} \
  -o "${SCRIPT_DIR}/clang/${version}/${level}-mem2reg/${TARGET_NAME}.o" \
  --filetype obj \
  "${SCRIPT_DIR}/clang/${version}/${level}-mem2reg/${TARGET_NAME}.bc"

# Clang O1+

  levels=(O2 O2 O2 O1 O2 O3)
versions=(12 13 14 15 15 15)

for i in ${!levels[*]}; do
  level=${levels[$i]}
  version=${versions[$i]}
  echo "## Building \`${TARGET_NAME}\` (Clang ${version}, ${level})"

  make clean
  git clean -f

  ## Build
  cc_level_opts="CC_${level}_OPTS"
  make \
    CC="$(llvm release-clang-lldb-${version}.0.0 clang)" \
    ECFLAGS="${CC_COMMON_OPTS} ${CC_CLANG_OPTS} ${!cc_level_opts}"

  ## Gather debug info
  dsymutil --flat "${TARGET_PATH}"
  mkdir -p "${SCRIPT_DIR}/clang/${version}/${level}"
  cp \
    "${TARGET_PATH}.dwarf" \
    "${SCRIPT_DIR}/clang/${version}/${level}/${TARGET_NAME}.dwarf"
done

# Cleanup
echo "## Cleanup"
make clean
git clean -f
