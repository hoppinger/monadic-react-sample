FROM node:boron
MAINTAINER erikdeijl@hoppinger.com
WORKDIR /app
COPY package.json package.json
RUN yarn install
RUN npm run css
RUN npm run webpack
COPY . .
EXPOSE 5000
CMD npm run server