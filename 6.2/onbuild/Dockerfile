FROM mhart/alpine-node:6.2.1

# support for modules with native dependencies
RUN apk add --no-cache gcc g++ make python

# global packages
RUN npm install -g atomiq-cli eslint esformatter babel-cli babel-node-debug isparta istanbul mocha node-inspector

# common packages (npm cache)
RUN npm install atomiq body-parser debug express node-fetch ramda babel-eslint babel-plugin-syntax-async-functions babel-plugin-transform-regenerator babel-register eslint-plugin-babel bunyan source-map-support bluebird dockerode

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# triggers for child image
ONBUILD COPY package.json /usr/src/app/
ONBUILD RUN npm --cache-min 9999999 --loglevel info install
ONBUILD COPY . /usr/src/app

# transpile/copy src to dist
ONBUILD RUN atomiq make babel

# Do not use npm start because we want the node process to have PID 1
# Override this in your image if you have a different main module
CMD [ "node", "dist/app.js" ]
