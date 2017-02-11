FROM ruby:latest

ADD Gemfile Gemfile.lock /block/
WORKDIR /block
RUN bundle install

ADD . /block/
