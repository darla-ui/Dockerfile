FROM node:lts-buster

RUN git clone https://github.com/darla-ui/DND-TELEGRAM-DOWNLOADER.git /anubis/app

RUN chown -R node:node /anubis/app

USER node

WORKDIR /anubis/app

COPY package*.json ./

RUN npm install 

COPY server.js .

CMD ["sh", "-c", "node server.js & npm start"]
