#!/usr/bin/env bash
set -ux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

versions=(5 7 9 11)

for tc in $(find -H testcases -type d -depth 1 | cut -c 11- | sort -n); do
  for version in ${versions[*]}; do
    echo "## Analysing binary (${tc}, ${version})"
    # Some programs contain infinite loops, abort analysis after time limit
    timeout --foreground 10 \
      valgrind \
      --tool=cachegrind \
      --cachegrind-out-file=./testcases/${tc}/bin/clang-${version}/opt-0.cg \
      ./testcases/${tc}/bin/clang-${version}/opt-0
  done
done
