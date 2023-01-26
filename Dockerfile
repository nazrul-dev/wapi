FROM node:18.13.0-alpine

RUN apk add git
RUN mkdir -p /apps
WORKDIR /apps
COPY package.json /apps
RUN npm install -g npm
RUN npm install --silent --force

COPY . /apps



EXPOSE 3333
CMD [ "npm", "start" ]