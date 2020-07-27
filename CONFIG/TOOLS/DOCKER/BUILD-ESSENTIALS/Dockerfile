FROM node:7.8-alpine
LABEL maintainer "projectzerodays@gmail.com>"

RUN printf "Install build dependencies\n" \
    && apk update \
    && apk add --virtual build-dependencies \
        build-base \
        gcc \
        wget \
        git \
    && apk add \
        bash

WORKDIR /app
COPY package.json .
    
RUN printf "Installing npm dependencies\n" \
    && npm install --silent --production \
    && apk del build-dependencies \
    && printf "Cleaning up... please wait\n"  \
    && rm -rf /var/cache/apk/* \
    && printf "Done.\n" \
    && clear
    
RUN printf "Copying the app over to /app\n" 

COPY . /app

RUN printf "Done.\n"
    && clear

EXPOSE 3000

CMD ["node", "index.js"]
