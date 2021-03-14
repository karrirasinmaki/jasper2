#!/bin/sh

# repos
apk update && apk upgrade && \
  echo @edge http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
  echo @edge http://nl.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories && \
  apk add --update-cache --repository http://dl-4.alpinelinux.org/alpine/edge/main/


# required basic stuff
apk update && apk add \
  less zip \
  bash git openssh \


# required build stuff
apk update && apk add \
  build-base autoconf automake


# required tools
apk update && apk add \
  imagemagick graphicsmagick

