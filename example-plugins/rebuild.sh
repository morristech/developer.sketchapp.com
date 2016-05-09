#!/bin/bash

base=`dirname $0`
cd "$base/.."

examples=( "plugins.actions.selected" )

for e in $examples
do
  dest="example-plugins/plugins/$e"
  if [[ ! -e "$dest" ]]
  then
    git clone "git@github.com:BohemianCoding/$e" "$dest"
  fi
done
