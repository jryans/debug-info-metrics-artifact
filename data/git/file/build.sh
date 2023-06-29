set -eux

if [ "${PWD##*/}" != "git" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

CC_COMMON_OPTS="-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone"
CC_O0_OPTS=""
CC_O1_OPTS="-O1"
CC_O2_OPTS="-O2"
CC_O3_OPTS="-O3"

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

# Extract bitcode
# extract-bc git.o

# Apply mem2reg only
# llvm release-clang-lldb-13.0.0 opt -o O0-13-plus-mem2reg/git.o.bc --mem2reg O0-13/git.o.bc

# Compile bitcode to object file
# llvm release-clang-lldb-13.0.0 llc -O0 -o git.o --filetype obj git.o.bc
