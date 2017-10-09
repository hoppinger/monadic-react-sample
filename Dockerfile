FROM node:boron
MAINTAINER erikdeijl@hoppinger.com
WORKDIR /app
COPY package.json package.json
RUN yarn install --ignore-engines
COPY . .
RUN ./node_modules/.bin/webpack
RUN ./node_modules/.bin/gulp
WORKDIR /app/samples
EXPOSE 5000
CMD ../node_modules/.bin/nodemon app.js