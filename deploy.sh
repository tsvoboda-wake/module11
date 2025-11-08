#!usr/bin/env sh

set -e

npm run build

cd dist

git init
git add .
git commit -m "New Deployment"
git push -f git@github.com:tsvoboda-wake/module11.git main:gh-pages

cd -