#!/bin/sh

set -e

PATH="/usr/local/bin:$PATH"
dir="$(git rev-parse --git-dir)"
trap 'rm -f "$dir/$$.tags"' EXIT
hasktags --ctags --ignore-close-implementation \
  --tags-absolute --output="$dir/$$.tags" .

root_dir="$(git rev-parse --show-toplevel)"
mv "$dir/$$.tags" "$root_dir/.tags"
