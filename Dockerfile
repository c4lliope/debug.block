FROM ruby:latest

ADD Gemfile Gemfile.lock /block/
WORKDIR /block
RUN bundle install

ADD https://raw.githubusercontent.com/assembleapp/scaffolds/master/ruby/assemble.rb /block/

ADD . /block/
