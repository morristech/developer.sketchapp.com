#!/bin/bash

cd `dirname $0`
scripts=`pwd`
cd "$scripts/.."
base=`pwd`
fullname=$(basename "$dest")
name="${fullname##*.}"

rm -rf "$base/_api"

# Build using Docco
#docco --layout linear --output "$base/_api" --template "$scripts/linear.jst" --css "$scripts/linear.css" "$base/../Sketch/Modules/SketchPluginManager/Javascript/Source/"*.js
#rm "$base/_api/linear.css"

# Build using jsdoc
cd "$base/../Sketch/Modules/SketchPluginManager/Javascript"
"node_modules/.bin/jsdoc" --configure "$scripts/jsdoc.json" --destination "$base/_api" --verbose Source/*.js

# Build using headerdoc
#"headerdoc2html" -o "$base/_api" "$base/../Sketch/Modules/SketchPluginManager/Javascript/Source/"*.js
