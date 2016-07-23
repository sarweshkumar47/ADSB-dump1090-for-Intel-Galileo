#!/bin/bash
if [ $# -eq 0 ]
  then
    echo ""
    echo "Error: Please specify the frequency as an argument in MHz."
    echo ""
    exit 1
fi
rtl_fm -f $1e6 -M wbfm -s 200000 -r 48000 - | aplay -r 48k -f S16_LE
#rtl_fm -f $1M -M fm -s 170k -A fast -r 32k -l 0 -E deemp -g 30 | aplay -r 30k -t raw -f S16_LE -c 1 -V1 -
