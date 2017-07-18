FROM node:boron
MAINTAINER erikdeijl@hoppinger.com
WORKDIR /app
COPY package.json package.json
RUN yarn install
COPY . .
RUN npm run stylesheets
RUN node_modules/.bin/webpack
EXPOSE 5000
CMD ["npm", "run", "server"]