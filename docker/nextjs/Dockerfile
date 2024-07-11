FROM node:22.4.0

ENV WEB_APP_PATH /app

RUN mkdir $WEB_APP_PATH
WORKDIR $WEB_APP_PATH

COPY ./frontend $WEB_APP_PATH

RUN npm install
RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
