FROM ruby:3.2.2-alpine3.18
WORKDIR /myapp
ADD Gemfile Gemfile.lock /myapp/
RUN apk update && \
    apk upgrade  && \
    apk add --no-cache alpine-sdk libpq-dev nodejs tzdata && \
    bundle install
