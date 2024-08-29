FROM node:slim

ENV NODE_ENV production
ENV PORT 3003

WORKDIR /express

COPY . .

RUN npm install

RUN npm install pm2 -g

CMD pm2 start process.yml && tail -f /dev/null

EXPOSE 3003