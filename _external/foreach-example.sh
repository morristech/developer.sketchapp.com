#!/bin/bash

dest="$1"

echo "$dest"
if [[ "$dest" =~ "_external/plugins/" ]]
then
  scripts="$2"
  fullname=$(basename "$dest")
  name="${fullname##*.}"

  echo "Regenerating $dest"
  docout="$scripts/../_plugins"
  for plugin in *.sketchplugin
  do
      echo "Found plugin $plugin"
      docco --output temp --template "$scripts/docco.jst" --css "$scripts/docco.css" "$plugin/Contents/Sketch/$name.js"

      mv -f "temp/$name.html" "$docout"
      rm -rf temp

      echo "Making zip"
      ditto -ck --keepParent *.sketchplugin "$scripts/../downloads/plugins/$name.zip"
  done
fi
