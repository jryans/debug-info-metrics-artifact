set -eux

if [ "${PWD##*/}" != "tar" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

SYSROOT="--sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk"
CC_COMMON_OPTS="${SYSROOT} -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone"
CC_O0_OPTS=""
CC_O1_OPTS="-O1"
CC_O2_OPTS="-O2"
CC_O3_OPTS="-O3"

export LLVM_COMPILER=clang
export LLVM_COMPILER_PATH=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-14.0.0/bin

make clean
git clean -f

# Requires newer version of GNU Bison
export PATH="/usr/local/opt/bison/bin:$PATH"

# Bootstrap
# ./bootstrap

# Configure
# ./configure \
# CFLAGS="" \
# LDFLAGS="-liconv" \
# MAKEINFO=true

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
# extract-bc src/tar
# cp src/tar.bc O0-14/

## Compile O0 bitcode to object file
# llvm release-clang-lldb-14.0.0 llc -O0 -o O0-14/tar.o --filetype obj O0-14/tar.bc

## Apply mem2reg only
# llvm release-clang-lldb-14.0.0 opt -o O0-14-mem2reg/tar.bc --mem2reg O0-14/tar.bc

## Compile O0 plus meg2reg bitcode to object file
# llvm release-clang-lldb-14.0.0 llc -O0 -o O0-14-mem2reg/tar.o --filetype obj O0-14-mem2reg/tar.bc

# O1+

## Gather debug info
dsymutil src/tar
# cp src/tar.dSYM/Contents/Resources/DWARF/tar O1-14/tar.dSYM
