#!/bin/bash -eu
# Dependencies:
# npm install -g svg-term-cli
# pip3 install asciinema

cast_filename=$(mktemp -u)
asciinema rec ${cast_filename}
out_filename=$(mktemp -u)
svg-term --in ${cast_filename} --out ${out_filename}.svg
echo "saved to ${out_filename}.svg"

