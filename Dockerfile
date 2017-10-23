FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /hvdbb
WORKDIR /hvdbb
ADD Gemfile /hvdbb/Gemfile
ADD Gemfile.lock /hvdbb/Gemfile.lock
RUN bundle install
ADD . /hvdbb
