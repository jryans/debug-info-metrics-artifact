#!/usr/bin/env bash
set -eux

if [ "${PWD##*/}" != "git" ]; then
  echo "Does not appear to be the expected directory, abort!"
  exit
fi

# Nothing to do, `make` is all you need
