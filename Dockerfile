FROM node:20-alpine3.19

WORKDIR /home/autolabel

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile
COPY . .

ENTRYPOINT ["node", "/home/autolabel/dist/index.js"]
