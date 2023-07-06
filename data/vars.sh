set -eux

llvm() {
  local build=${1}
  local program=${2:-}
  if [ -z "${program}" ]; then
    echo "${HOME}/Projects/LLVM/llvm/build-${build}"
    return
  fi
  echo "${HOME}/Projects/LLVM/llvm/build-${build}/bin/${program}"
}

CC_SYSROOT_OPTS="--sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk"
CC_COMMON_OPTS="${CC_SYSROOT_OPTS} -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone"
CC_O0_OPTS=""
CC_O1_OPTS="-O1"
CC_O2_OPTS="-O2"
CC_O3_OPTS="-O3"
