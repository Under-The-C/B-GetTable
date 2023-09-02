FROM ubuntu:latest

ARG GIT_URL
ARG GIT_BRANCH
ARG MY_WORKDIR

RUN apt-get update && apt-get upgrade

RUN apt-get install -y openjdk-17-jdk

RUN apt-get install -y git && \
	git clone -b $GIT_BRANCH $GIT_URL $MY_WORKDIR

COPY fastbuild.sh $MY_WORKDIR
COPY resources/* $MY_WORKDIR/src/main/resources

WORKDIR $MY_WORKDIR

ENTRYPOINT ["sh", "fastbuild.sh"]
