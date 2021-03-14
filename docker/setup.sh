#!/bin/sh

## Maybe not needed
##   nss@edge && \
##   ca-certificates \
##   libressl \
##   libressl-dev \
## 
## # for ruby and jekyll
## apk update \
## && apk add ruby \
##            ruby-bigdecimal \
##            ruby-io-console \
##            ruby-irb \
##            build-base \
##            ruby-dev
## 
## apk add --no-cache --virtual .build-deps make gcc g++ musl-dev \
##  && gem install --no-document jekyll bundler \
##  && apk del .build-deps
## 
## export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true


# firebase
npm install -g firebase-tools nodemon
