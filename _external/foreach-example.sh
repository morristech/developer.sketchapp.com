#!/bin/bash

dest="$1"

echo "$dest"
if [[ "$dest" =~ "_external/plugins/" ]]
then
  scripts="$2"
  fullname=$(basename "$dest")
  name="${fullname##*.}"

  echo "Regenerating $dest"
  docout="$scripts/../_generated/plugins"
  mkdir -p "$docout"
  for plugin in *.sketchplugin
  do
      echo "Found plugin $plugin"
      docco --output temp --template "$scripts/docco.jst" --css "$scripts/docco.css" "$plugin/Contents/Sketch/$name.js"

      mv -f "temp/$name.html" "$docout/$name/index.html"
      rm -rf temp

      echo "Making zip"
      mkdir -p "$docout/$name"
      ditto -ck --keepParent *.sketchplugin "$docout/$name/$name.zip"
  done
fi
