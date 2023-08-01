#!/bin/sh

git checkout $GIT_BRANCH
git fetch --all
git reset --hard origin/$GIT_BRANCH
git pull origin $GIT_BRANCH

./gradlew build -x test
java -jar -Dspring.profiles.active=prod build/libs/UnderTheC-Backend-0.0.1-SNAPSHOT.jar
