#!/bin/sh

cd dist
git add -Af
if [ "git status --porcelain" ]; then
    git commit -am "pushing presentation built on travis (build number ${TRAVIS_BUILD_NUMBER})";
    git push https://${GH_OAUTH_TOKEN}@github.com/tpluscode/jsonld-hydra-presentation gh-pages  > /dev/null 2>&1;
fi