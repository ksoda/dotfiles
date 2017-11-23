#!/bin/sh

set -e

PATH="/usr/local/bin:$PATH"
dir="$(git rev-parse --git-dir)"
trap 'rm -f "$dir/$$.tags"' EXIT
git ls-files | \
  hasktags --ignore-close-implementation --ctags STDIN -f"$dir/$$.tags"
root_dir="$(git rev-parse --show-toplevel)"
mv "$dir/$$.tags" "$root_dir/.tags"
