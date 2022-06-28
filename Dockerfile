FROM node:16-alpine

ENV NODE_ENV=production

RUN addgroup -g 1017 -S appgroup \
  && adduser -u 1017 -S appuser -G appgroup \
  && apk update \
  && apk add build-base python3

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY app/ ./app
COPY etc/ ./etc
COPY lib/ ./lib
COPY *.js ./
COPY start.sh ./

RUN npm run prestart

RUN chown -R appuser:appgroup /app

USER 1017

CMD ["./start.sh"]
