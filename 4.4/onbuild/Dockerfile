FROM node:4.4.3

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# triggers for child image
ONBUILD COPY package.json /usr/src/app/
ONBUILD RUN npm install --loglevel info
ONBUILD COPY . /usr/src/app

# Do not use npm start because we want the node process to have PID 1
# Override this in your image if you have a different main module
CMD [ "node", "app.js" ]
