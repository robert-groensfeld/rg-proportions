#!/bin/bash

SCRIPT_DIR=$(dirname "$BASH_SOURCE")

polymer install
mkdir -p "$SCRIPT_DIR"/bower_components/rg-proportions
cp -r index.html \
      rg-proportions.html \
      demo \
      test \
      "$SCRIPT_DIR"/bower_components/rg-proportions

rm .gitignore
git add bower_components
git commit -a
git push