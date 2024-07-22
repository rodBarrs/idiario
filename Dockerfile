FROM ruby:2.6.6-slim-buster

ENV APP_PATH /app
ENV BUNDLE_PATH /box

RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev \
    curl \
    git \
    shared-mime-info

# Instalar Node.js 14.x
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs

RUN npm i -g yarn
RUN gem update --system 3.3.22
RUN mkdir $APP_PATH

WORKDIR $APP_PATH

