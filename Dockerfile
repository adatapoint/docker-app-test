FROM node:10

COPY ["package.json", "package-lock.json", "/usr/src/"]

WORKDIR /usr/src

RUN npm install

COPY [".", "/usr/src/"]

RUN npm install

EXPOSE 3000

CMD ["npx", "nodemon", "index.js"]
