#!/bin/bash

cd `dirname $0`
scripts=`pwd`
cd "$scripts/.."
base=`pwd`
fullname=$(basename "$dest")
name="${fullname##*.}"

src="/tmp/esdoc/api"
rm -rf "$src" 2> /dev/null
mkdir -p "$src"

dest="$base/_generated-api"
rm -rf "$dest" 2> /dev/null
mkdir -p "$dest"

# Build using esdoc
esdoc="$(npm bin)/esdoc"

# Copy source files
cp -r "$base/../SketchAPI/Source/"*.js "$src/"
cp "$base/../SketchAPI/README.md" "$src/"
cd "$src/"

configpath="$src/esdoc.json"
echo "{" > "$configpath"
echo "\"source\": \"$src\"," >> "$configpath"
echo " \"destination\": \"$dest\"," >> "$configpath"
echo " \"plugins\": [ { \"name\": \"$scripts/api-docs-plugin.js\", \"option\": { \"scripts\": \"$scripts\" } } ]" >> "$configpath"
echo " }" >> "$configpath"

pwd
ls
"$esdoc" -c "$configpath"

# Remove the json files, and the raw source files, which we probably don't need
rm -f "$dest/"*.json
rm -f "$dest/"*.js
rm -f "$dest/README.md"
rm -rf "$dest/ast"
rm -rf "$src"
