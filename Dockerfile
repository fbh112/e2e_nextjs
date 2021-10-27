#FROM  quay.io/upslopeio/node-alpine
FROM node:alpine
WORKDIR /usr/src/app
COPY package*.json .
RUN npm install
COPY . .
RUN npm run build
#EXPOSE 3000  this is only for documentation purpose
CMD ["npm", "start"]
