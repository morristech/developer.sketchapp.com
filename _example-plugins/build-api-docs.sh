#!/bin/bash

cd `dirname $0`
scripts=`pwd`
cd "$scripts/.."
base=`pwd`
fullname=$(basename "$dest")
name="${fullname##*.}"

docco --output "$base/_api" --template "$scripts/docco.jst" --css "$scripts/docco.css" "$base/../Sketch/Modules/SketchPluginManager/Javascript/src/"*.js
