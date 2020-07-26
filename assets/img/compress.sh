#!/bin/bash

cd thumbnails

for f in *
do
    unc=$(identify -format "%w %h" "$f")
    wh=($unc)
    if [ ${wh[0]} > 1000 ]; then
        convert "$f" -resize 1000x1000 "$f"
    fi
done
