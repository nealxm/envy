#!/usr/bin/env zsh
set -e

if [ -z "$1" ]; then
  echo "usage: $0 <module>"
  exit 1
fi

fastfetch -h "${1}-format"
fastfetch -s "${1}" --format json