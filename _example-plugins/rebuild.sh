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

  docout="$base/examples/plugins"
  docco --output "$docout" --template "$scripts/docco.jst" --css "$scripts/docco.css" *.sketchplugin/Contents/Sketch/*.js
done

open "http://localhost:4000/examples/plugins"

additionalFolders=`defaults read com.bohemiancoding.sketch3.xcode AdditionalPluginFolders`
if ! [[ "$additionalFolders" == *"$scripts"* ]]
then
    echo "Adding $scripts to the AdditionalPluginFolders setting."
    defaults write com.bohemiancoding.sketch3.xcode AdditionalPluginFolders -array-add "$scripts"
fi
