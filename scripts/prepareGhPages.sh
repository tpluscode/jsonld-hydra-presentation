#!/bin/bash -x

rm -rf dist
git clone https://github.com/tpluscode/jsonld-hydra-presentation.git dist
cd dist
git checkout gh-pages
find . -maxdepth 1 -not -name 'README.md' -not -path '*/\.*' | xargs rm -rf
git config --global user.email "tpluscode@users.noreply.github.com"
git config --global user.name "tpluscode"
cd ..
