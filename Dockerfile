FROM ruby:3.2.2-bullseye

RUN apt-get update -qq && \
    apt-get install -y \
                    build-essential \
                    mariadb-client

RUN mkdir /app

ENV APP_ROOT /app
WORKDIR $APP_ROOT

ADD . $APP_ROOT

# Gemfileのbundle install
# RUN bundle install

ENV RUBYOPT -EUTF-8

