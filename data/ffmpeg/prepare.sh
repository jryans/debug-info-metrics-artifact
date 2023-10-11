#!/usr/bin/env bash
set -eux

if [ "${PWD##*/}" != "ffmpeg" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

echo "## Preparing \`ffmpeg\`"

# Configure
# Focus on `ffmpeg` binary, disable other programs
# Disable documentation
# Disable platform-specific features
# Disable debugging and optimisation defaults
./configure \
  --disable-ffplay \
  --disable-ffprobe \
  --disable-doc \
  --disable-protocol=tls \
  --disable-appkit \
  --disable-avfoundation \
  --disable-coreimage \
  --disable-metal \
  --disable-securetransport \
  --disable-audiotoolbox \
  --disable-videotoolbox \
  --disable-asm \
  --disable-debug \
  --disable-optimizations \
  --disable-stripping

# Disable dependency tracking
replace 'DEPFLAGS=.*$' 'DEPFLAGS=' ffbuild/config.mak

# Remove compiler-specific options
replace '\-mstack-alignment=16 \-Qunused-arguments ' '' ffbuild/config.mak
replace '\-Werror=partial-availability ' '' ffbuild/config.mak