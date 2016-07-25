#!/bin/bash

cd `dirname $0`
scripts=`pwd`
cd "$scripts/.."
base=`pwd`
fullname=$(basename "$dest")
name="${fullname##*.}"

rm -rf "$base/api"

# Build using esdoc
cd "$scripts/api"
pwd

configpath=/tmp/esdoc.json
echo "{\"source\": \"$base/../SketchAPI/Source/\", \"destination\": \"$base/reference/api\" }" > "$configpath"
"$base/node_modules/.bin/esdoc" -c "$configpath"

# Add jekyll headers
# for page in "$base/api/"*.html
# do
#     echo "$page"
#     echo "---" > "$page.tmp"
#     echo "title: $(basename "$page")" >> "$page.tmp"
#     echo "---" >> "$page.tmp"
#     cat "$page" >> "$page.tmp"
#     rm "$page"
#     mv "$page.tmp" "$page"
# done
