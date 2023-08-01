#!/bin/sh

git checkout $GIT_BRANCH
git fetch --all
git reset --hard origin/$GIT_BRANCH
git pull origin $GIT_BRANCH

npm install
npm start
