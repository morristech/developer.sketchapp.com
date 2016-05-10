#!/bin/bash

cd `dirname $0`
scripts=`pwd`
cd "$scripts/.."
base=`pwd`

examples=("plugins.examples.selected-layers" "plugins.examples.svgo-export")

for e in ${examples[@]}
do
  echo "Updating $e"
  dest="$scripts/plugins/$e"
  if [[ ! -e "$dest" ]]
  then
    git clone "git@github.com:BohemianCoding/$e" "$dest"
    cd "$dest"
  else
    cd "$dest"
    git pull
  fi

  docout="$base/example-plugins"
  docco --output "$docout" --template "$scripts/docco.jst" --css "$scripts/docco.css" *.sketchplugin/Contents/Sketch/*.js
  open "http://localhost:4000/example-plugins/$e/"
done
