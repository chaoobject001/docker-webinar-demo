FROM node:14.0.0

LABEL author="Charles Kuo"

WORKDIR /app

COPY package*.json ./

RUN npm install -g npm

RUN npm install

COPY . ./

CMD ["npm", "start"]