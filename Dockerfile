FROM ruby:alpine

MAINTAINER Rafache

RUN apk update && apk upgrade && apk add --no-cache git make

RUN gem install --quiet \
    rake \
    capistrano \
    highline \
    airbrussh \
    dotenv \
    sass

WORKDIR /data