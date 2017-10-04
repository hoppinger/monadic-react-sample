FROM node:boron
MAINTAINER erikdeijl@hoppinger.com
WORKDIR /app
COPY package.json package.json
RUN yarn install
RUN npm css
RUN npm webpack
COPY . .
EXPOSE 5000
CMD npm run server