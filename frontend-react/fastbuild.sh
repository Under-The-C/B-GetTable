#!/bin/sh

git checkout $FRONTEND_GIT_BRANCH
git fetch --all
git reset --hard origin/$FRONTEND_GIT_BRANCH
git pull origin $FRONTEND_GIT_BRANCH

npm install
npm start
