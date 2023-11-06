set -eux

llvm() {
  local build=${1}
  local program=${2:-}
  if [ -z "${program}" ]; then
    echo "${HOME}/Projects/LLVM/llvm/builds/${build}"
    return
  fi
  echo "${HOME}/Projects/LLVM/llvm/builds/${build}/bin/${program}"
}

CC_SYSROOT_OPTS="--sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk"
CC_COMMON_OPTS="${CC_SYSROOT_OPTS} -g"
CC_CLANG_OPTS="-fno-discard-value-names -Xclang -disable-O0-optnone"
CC_O0_OPTS=""
CC_O1_OPTS="-O1"
CC_O2_OPTS="-O2"
CC_O3_OPTS="-O3"

DBGCOV_PATH="${HOME}/Projects/dbgcov/bin"
DBGCOV_CC="gcc-13"
