FROM node:boron
MAINTAINER erikdeijl@hoppinger.com
WORKDIR /app
COPY package.json package.json
RUN yarn install --ignore-engines
COPY . .
RUN ./node_modules/.bin/webpack
RUN ./node_modules/.bin/gulp
EXPOSE 5000
CMD npm run server