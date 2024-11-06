FROM ruby:3.2.2

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

WORKDIR /in-memory-db

COPY Gemfile /Gemfile
COPY Gemfile.lock /Gemfile.lock

RUN gem install bundler && bundle install

COPY . .

