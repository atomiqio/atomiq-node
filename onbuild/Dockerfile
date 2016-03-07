FROM node:5

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# override base image, reset back to default (warn)
#ENV NPM_CONFIG_LOGLEVEL warn

ONBUILD COPY package.json /usr/src/app/
ONBUILD RUN npm install --unsafe-perm
ONBUILD COPY . /usr/src/app

CMD [ "npm", "start" ]
