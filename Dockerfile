FROM node:18-alpine

WORKDIR /app

COPY package.json .
COPY index.html .
COPY server.js .
COPY images ./images

RUN npm install

EXPOSE 3000

CMD [ "node", "server.js" ]
