#!/usr/bin/env bash
set -eux

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Expects to run from this script's directory
if [ "${PWD}" != "${SCRIPT_DIR}" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

versions=(5 7 9 11)
  levels=(0 1 2 3 g s)

for tc in $(find -H testcases -type d -depth 1 | cut -c 11- | sort -n); do
  for version in ${versions[*]}; do
    for level in ${levels[*]}; do
      echo "## Checking debug quality (${tc}, ${version}, ${level})"

      # Only use cachegrind for levels > 0
      if [ ${level} == "0" ]; then
        debuginfo-quality \
          --lines \
          --tsv \
          --only-locals \
          --regions testcases/${tc}/src/clang/a.i.dbgcov \
          --scope-regions \
          --only-computation-regions \
          --range-start-first-defined-region \
          testcases/${tc}/bin/clang-${version}/opt-${level}.dSYM/Contents/Resources/DWARF/opt-${level} \
          > \
          testcases/${tc}/bin/clang-${version}/opt-${level}-lines.tsv
        debuginfo-quality \
          --variables \
          --tsv \
          --only-locals \
          --regions testcases/${tc}/src/clang/a.i.dbgcov \
          --scope-regions \
          --only-computation-regions \
          --range-start-first-defined-region \
          testcases/${tc}/bin/clang-${version}/opt-${level}.dSYM/Contents/Resources/DWARF/opt-${level} \
          > \
          testcases/${tc}/bin/clang-${version}/opt-${level}-variables.tsv
      else
        debuginfo-quality \
          --lines \
          --tsv \
          --only-locals \
          --regions testcases/${tc}/src/clang/a.i.dbgcov \
          --scope-regions \
          --only-computation-regions \
          --range-start-first-defined-region \
          --cachegrind testcases/${tc}/bin/clang-${version}/opt-0.cg \
          --only-cachegrind-regions \
          testcases/${tc}/bin/clang-${version}/opt-${level}.dSYM/Contents/Resources/DWARF/opt-${level} \
          > \
          testcases/${tc}/bin/clang-${version}/opt-${level}-lines.tsv
        debuginfo-quality \
          --variables \
          --tsv \
          --only-locals \
          --regions testcases/${tc}/src/clang/a.i.dbgcov \
          --scope-regions \
          --only-computation-regions \
          --range-start-first-defined-region \
          --cachegrind testcases/${tc}/bin/clang-${version}/opt-0.cg \
          --only-cachegrind-regions \
          testcases/${tc}/bin/clang-${version}/opt-${level}.dSYM/Contents/Resources/DWARF/opt-${level} \
          > \
          testcases/${tc}/bin/clang-${version}/opt-${level}-variables.tsv
      fi
    done
  done
done
