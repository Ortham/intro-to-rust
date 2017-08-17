#!/bin/bash
set -e

npm run build

git checkout gh-pages
cp -r ./build/* ./
git add css js lib plugin index.html

git commit -m "Publishing updated slides"
git push
git checkout master
