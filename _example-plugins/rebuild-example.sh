#!/bin/bash

dest="$1"
scripts="$2"
name=`basename *.sketchplugin .sketchplugin`

echo "Updating $dest"
git pull

echo "Regenerating $dest"
docout="$scripts/../examples/plugins"
docco --output temp --template "$scripts/docco.jst" --css "$scripts/docco.css" *.sketchplugin/Contents/Sketch/*.js
name=`basename temp/*.html .html`
mv -f "temp/$name.html" "$scripts/../examples/plugins/"
rm -rf temp

echo "Making zip"
ditto -ck *.sketchplugin "$scripts/../examples/plugins/$name.zip"
