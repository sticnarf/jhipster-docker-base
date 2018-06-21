FROM debian:stretch

LABEL maintainer="sticnarf@gmail.com"

RUN apt-get update && apt-get install -y build-essential openjdk-8-jdk curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - 
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y nodejs yarn