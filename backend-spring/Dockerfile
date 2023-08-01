FROM openjdk:17-alpine

ARG GIT_URL
ARG GIT_BRANCH
ARG MY_WORKDIR

RUN apk update && apk add git && \
	git clone -b $GIT_BRANCH $GIT_URL $MY_WORKDIR

COPY fastbuild.sh $MY_WORKDIR

WORKDIR $MY_WORKDIR

ENTRYPOINT ["sh", "fastbuild.sh"]
