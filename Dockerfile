FROM ruby:3.2.2
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
ADD . /myapp
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs && \
    bundle install
