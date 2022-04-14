FROM node:alpine

WORKDIR /usr/src/app
 
COPY package*.json ./
 
RUN npm install

RUN mkdir -p node_modules/.cache && chmod -R 777 node_modules/.cache
 
COPY . .

EXPOSE 3005
 
ENV NODE_OPTIONS --openssl-legacy-provider

CMD [ "npm", "start" ]