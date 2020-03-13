FROM node:alpine

LABEL "com.github.actions.name"="100 Days Auto-Tweet"
LABEL "com.github.actions.description"="Auto-Tweet for 100 Days of code challenge"
LABEL "com.github.actions.icon"="twitter"
LABEL "com.github.actions.color"="blue"
LABEL "maintainer"="Sidney Nimako"

COPY package*.json ./
RUN npm ci --only=prodction

COPY . .
ENTRYPOINT ["node","/index.js"]

