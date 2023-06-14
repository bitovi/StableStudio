# syntax=docker/dockerfile:experimental
FROM node:18-bullseye
ENV APP_PORT=3000
WORKDIR /usr/src/app
COPY package.json yarn.lock ./
COPY . .
RUN apt-get update -q && apt-get -yq install git && \
    apt-get -yq clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN git config --global --add safe.directory /usr/src/app
RUN echo "cachebust_1"
RUN yarn
EXPOSE $APP_PORT
CMD ["yarn", "dev"]