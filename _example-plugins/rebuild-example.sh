#!/bin/bash

dest="$1"
scripts="$2"

echo "Updating $dest"
git pull

echo "Regenerating $dest"
docout="$scripts/../examples/plugins"
docco --output "$docout" --template "$scripts/docco.jst" --css "$scripts/docco.css" *.sketchplugin/Contents/Sketch/*.js
