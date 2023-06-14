# syntax=docker/dockerfile:experimental
FROM node
ENV APP_PORT=3000
WORKDIR /usr/src/app
COPY package.json yarn.lock ./
COPY . .
RUN echo "cachebust_1"
RUN yarn
EXPOSE $APP_PORT
CMD ["yarn", "dev"]