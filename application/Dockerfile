FROM node:20

WORKDIR /opt/play-kube-app

RUN npm i -g pnpm

COPY package*.json ./
COPY pnpm-lock.yaml ./

RUN pnpm install --frozen-lockfile

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]
