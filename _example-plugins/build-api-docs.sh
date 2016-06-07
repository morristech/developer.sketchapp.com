#!/bin/bash

cd `dirname $0`
scripts=`pwd`
cd "$scripts/.."
base=`pwd`
fullname=$(basename "$dest")
name="${fullname##*.}"

rm -rf "$base/_api"
docco --layout linear --output "$base/_api" --template "$scripts/linear.jst" --css "$scripts/linear.css" "$base/../Sketch/Modules/SketchPluginManager/Javascript/Source/"*.js
rm "$base/_api/linear.css"
