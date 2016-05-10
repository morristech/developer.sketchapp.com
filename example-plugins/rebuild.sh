#!/bin/bash

scripts=`dirname $0`
cd "$scripts/.."
base=`pwd`

examples=("plugins.examples.selected-layers" "plugins.examples.svgo-export")

for e in ${examples[@]}
do
  echo "Updating $e"
  dest="$base/example-plugins/plugins/$e"
  if [[ ! -e "$dest" ]]
  then
    git clone "git@github.com:BohemianCoding/$e" "$dest"
    cd "$dest"
  else
    cd "$dest"
    git pull
  fi

  docout="$base/example-plugins/docs/$e"
  docco --output "$docout" *.sketchplugin/Contents/Sketch/*.js
  open "$docout/"*.html
done
