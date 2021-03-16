FROM ruby:2.2.2

RUN mkdir /myapp

WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
# COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp