FROM openjdk:17-alpine

RUN apk update && apk add git && \
	git clone -b develop https://github.com/Under-The-C/Backend.git

WORKDIR /Backend

ENTRYPOINT ["sh", "fastbuild.sh"]
