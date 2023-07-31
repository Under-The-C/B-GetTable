FROM node:18-alpine

RUN apk update && apk add git && \
	git clone -b develop https://github.com/Under-The-C/Frontend.git

WORKDIR /Frontend

ENTRYPOINT ["sh", "fastbuild.sh"]
