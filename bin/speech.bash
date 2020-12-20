#!/bin/bash
sound_filename=$(mktemp -u)
while read line
do
  echo $line \
  | open_jtalk \
  -m /usr/share/hts-voice/nitech-jp-atr503-m001/nitech_jp_atr503_m001.htsvoice \
  -x /var/lib/mecab/dic/open-jtalk/naist-jdic \
  -ow $sound_filename && \
  aplay --quiet $sound_filename
  rm -f $sound_filename
done < "${1:-/dev/stdin}"

