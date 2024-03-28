FROM node:18-alpine

ENV NODE_ENV=production

WORKDIR /app

COPY package*.json ./

RUN npm install


COPY . .
RUN npm run build

EXPOSE 3000

ENTRYPOINT ["npm", "start"]
