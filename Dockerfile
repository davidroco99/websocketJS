FROM node:14.17.1-alpine
WORKDIR /usr/src/app
COPY ./servidorJS/package*.json ./
RUN npm install ws
RUN npm install 
COPY . .
CMD ["node", "index.js"]