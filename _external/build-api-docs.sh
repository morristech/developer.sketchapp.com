#!/bin/bash

cd `dirname $0`
scripts=`pwd`
cd "$scripts/.."
base=`pwd`
fullname=$(basename "$dest")
name="${fullname##*.}"

# Build using esdoc
esdoc="$(npm bin)/esdoc"

# Copy source files into temporary location
src="/tmp/esdoc/api"
rm -rf "$src" 2> /dev/null
mkdir -p "$src"
cp -r "$base/../SketchAPI/Source/"*.js "$src/"
cp "$base/../SketchAPI/README.md" "$src/"
cd "$src/"

# Start with a clean destination
dest="$base/reference/api"
rm -rf "$dest" 2> /dev/null
mkdir -p "$dest"

# Write out a temporary config file
configpath="$src/esdoc.json"
echo "{" > "$configpath"
echo "\"source\": \"$src\"," >> "$configpath"
echo " \"destination\": \"$dest\"," >> "$configpath"
echo " \"plugins\": [ { \"name\": \"$scripts/api-docs-plugin.js\", \"option\": { \"scripts\": \"$scripts\" } } ]" >> "$configpath"
echo " }" >> "$configpath"

"$esdoc" -c "$configpath"

# Remove the json files, and the raw source files, which we probably don't need
rm -f "$dest/"*.json
rm -rf "$dest/ast"
rm -rf "$src"
