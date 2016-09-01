#!/bin/bash

cd `dirname $0`
scripts=`pwd`
cd "$scripts/.."
base=`pwd`
fullname=$(basename "$dest")
name="${fullname##*.}"

rm -rf "$base/api"

# Build using esdoc
esdoc="$(npm bin)/esdoc"
cd "$scripts/api"
pwd

configpath=/tmp/esdoc.json
echo "{" > "$configpath"
echo "\"source\": \"$base/../SketchAPI/Source/\"," >> "$configpath"
echo " \"destination\": \"$base/reference/api\"," >> "$configpath"
echo " \"plugins\": [ { \"name\": \"$scripts/api-docs-plugin.js\" } ]," >> "$configpath"
echo " \"styles\": [ \"$scripts/api-docs.css\" ], " >> "$configpath"
echo " \"scripts\": [ \"$scripts/api-docs.js\" ]" >> "$configpath"
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
