#!/usr/bin/env bash
set -eux

if [ "${PWD##*/}" != "bzip2" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

# Nothing to do, `make` is all you need
