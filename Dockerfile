FROM node:boron
MAINTAINER erikdeijl@hoppinger.com
WORKDIR /app
COPY package.json package.json
COPY gulpfile.js gulpfile.js
COPY webpack.config.js webpack.config.js
RUN yarn install
RUN npm run webpack
COPY . .
EXPOSE 5000
CMD npm run server