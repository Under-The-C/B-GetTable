#!/bin/sh

git checkout $BACKEND_GIT_BRANCH
git fetch --all
git reset --hard origin/$BACKEND_GIT_BRANCH
git pull origin $BACKEND_GIT_BRANCH

./gradlew build -x test
java -jar -Dspring.profiles.active=prod build/libs/$PROJECT_NAME-0.0.1-SNAPSHOT.jar
