#!/bin/bash

dest="$1"
scripts="$2"
fullname=$(basename "$dest")
name="${fullname##*.}"

echo "Updating $name"
git pull --ff-only

echo "Regenerating $dest"
docout="$scripts/../examples/plugins"
for plugin in *.sketchplugin
do
    echo "Found plugin $plugin"
    docco --output temp --template "$scripts/docco.jst" --css "$scripts/docco.css" "$plugin/Contents/Sketch/$name.js"

    mv -f "temp/$name.html" "$scripts/../examples/plugins/"
    rm -rf temp

    echo "Making zip"
    ditto -ck *.sketchplugin "$scripts/../examples/plugins/$name.zip"

done
