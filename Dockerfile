FROM ruby:3.2.2-alpine3.18
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN apk update && \
    apk upgrade  && \
    apk add --no-cache alpine-sdk libpq-dev nodejs tzdata && \
    bundle install
