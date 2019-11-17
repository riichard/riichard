#!/bin/bash
set -e

function resize() {
    file="$1"
    out=$(basename "$file")
    dir=$(basename $(dirname "$file"))
    outpath=./images/ds/${dir}/${out}
    mkdir -p "./images/ds/${dir}"
    convert "${file}" -resize 1600x -quality 90 "${outpath}"
}

for file in $(find "./images/originals" -type f -name *.jpg -o -name *.jpeg); do
    echo $file
    resize "${file}"
done
