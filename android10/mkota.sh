#!/bin/bash
echo -n {\"datetime\": `cat $2 | cut -d "=" --output-delimiter "," -f 1,2 | awk -F, -v findex=1 -v value=post-timestamp '$findex == value {print}' | cut -d, -f 2`,\"filename\": \"$3\",\"id\": \"`sha256sum $1 | awk '{ print $1 }'`\",\"romtype\": \"kiam001\",\"size\": `stat -c%s $1`,\"url\": \"https://sourceforge.net/projects/kiam001-build-roms/files/Device%20Cedric%20%28Moto%20G5%29/android10/$3\",\"version\": \"10.0\"}