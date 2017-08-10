FROM node:alpine
MAINTAINER Adam Simpson

COPY ./ /opt

WORKDIR /opt

RUN npm install

CMD ["node", "config.js"]
