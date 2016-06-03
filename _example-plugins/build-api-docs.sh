#!/bin/bash

cd `dirname $0`
scripts=`pwd`
cd "$scripts/.."
base=`pwd`
fullname=$(basename "$dest")
name="${fullname##*.}"

rm -rf "$base/_api"
docco --output "$base/_api" --template "$scripts/docco.jst" --css "$scripts/docco.css" "$base/../Sketch/Modules/SketchPluginManager/Javascript/Source/"*.js
rm "$base/_api/docco.css"
