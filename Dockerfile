FROM node:14
WORKDIR /usr/src/app
COPY  . .

RUN npm install
RUN npm install serve
RUN npm run build

EXPOSE 3000
CMD ["node","node_modules/serve/bin/serve.js","-l","tcp://0.0.0.0:3000","-s", "build"]

