FROM node:alpine

LABEL maintainer="Fahmi Khairudin"

RUN apk update && apk add ca-certificates && update-ca-certificates

RUN mkdir /app
ADD . /app
WORKDIR /app

RUN npm install
CMD npm start