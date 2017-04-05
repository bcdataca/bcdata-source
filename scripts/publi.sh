#!/bin/sh

DIR=$(dirname "$0")

cd $DIR/..

if [[ $(git status -s) ]]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

echo "Deleting old publication"
rm -rf public

echo "Generating site"
hugo

cp CNAME ./public/
cp -r favi/* ./public/

shopt -s extglob
rm -rf ../bcdata-deployed/!(.git)
mv ./public/* ../bcdata-deployed/

read -erp "Push gh-pages to origin? (y/n): " doPushToRemote

if [[ "$doPushToRemote" == "y" ]]
then
    echo "Pushing to remote..."
    read -erp "Commit Message: " commitMessage
    cd ../bcdata-deployed && git add --all && git commit -m $commitMessage && git push origin gh-pages
fi
