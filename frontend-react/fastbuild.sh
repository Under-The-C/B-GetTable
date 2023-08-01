#!/bin/sh

git checkout $GIT_BRANCH
git pull

npm install
npm start
