#!/bin/bash

cd `dirname $0`
scripts=`pwd`
cd "$scripts/.."
base=`pwd`
fullname=$(basename "$dest")
name="${fullname##*.}"

rm -rf "$base/api" 2> /dev/null

# Build using esdoc
esdoc="$(npm bin)/esdoc"

configpath=/tmp/esdoc.json
echo "{" > "$configpath"
echo "\"source\": \"$base/../SketchAPI/Source/\"," >> "$configpath"
echo " \"destination\": \"$base/reference/api\"," >> "$configpath"
echo " \"plugins\": [ { \"name\": \"$scripts/api-docs-plugin.js\", \"option\": { \"scripts\": \"$scripts\" } } ]," >> "$configpath"
echo " }" >> "$configpath"

"$esdoc" -c "$configpath"

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
