#!/usr/bin/env bash
set -eux

if [ "${PWD##*/}" != "git" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../../vars.sh"

export LLVM_COMPILER=clang
export LLVM_COMPILER_PATH=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-14.0.0/bin

make clean
git clean -f

# Build for O0
# make V=1 CC=wllvm CFLAGS="${CC_COMMON_OPTS} ${CC_O0_OPTS}"

# Build for O1 (12)
# make V=1 CC=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-12.0.0/bin/clang CFLAGS="${CC_COMMON_OPTS} ${CC_O1_OPTS}"

# Build for O1 (13)
# make V=1 CC=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang CFLAGS="${CC_COMMON_OPTS} ${CC_O1_OPTS}"

# Build for O1 (14)
# make V=1 CC=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-14.0.0/bin/clang CFLAGS="${CC_COMMON_OPTS} ${CC_O1_OPTS}"

# Build for O2 (14)
# make V=1 CC=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-14.0.0/bin/clang CFLAGS="${CC_COMMON_OPTS} ${CC_O2_OPTS}"

# Build for O3 (14)
make V=1 CC=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-14.0.0/bin/clang CFLAGS="${CC_COMMON_OPTS} ${CC_O3_OPTS}"

# O0

## Extract bitcode for O0
# extract-bc git
# cp git.bc O0-14/

## Compile O0 bitcode to object file
# llvm release-clang-lldb-14.0.0 llc -O0 -o O0-14/git.o --filetype obj O0-14/git.bc

## Apply mem2reg only
# llvm release-clang-lldb-14.0.0 opt -o O0-14-mem2reg/git.bc --mem2reg O0-14/git.bc

## Compile O0 plus meg2reg bitcode to object file
# llvm release-clang-lldb-14.0.0 llc -O0 -o O0-14-mem2reg/git.o --filetype obj O0-14-mem2reg/git.bc

# O1+

## Gather debug info
# dsymutil git
# cp git.dSYM/Contents/Resources/DWARF/git O1-14/git.dSYM
