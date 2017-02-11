FROM ruby:latest

ADD Gemfile Gemfile.lock /assemble
WORKDIR /assemble
RUN bundle install

ADD . /assemble/
