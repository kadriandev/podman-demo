FROM node:9

WORKDIR /home/node/app

COPY package.json .

COPY --chown=node:node . .

RUN npm config set strict-ssl false

RUN npm install --loglevel=warn 

CMD [ "node", "app.js" ]
