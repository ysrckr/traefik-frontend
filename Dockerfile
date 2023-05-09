FROM node:18.3.0-alpine3.14

# Create app directory
WORKDIR /frontend

COPY . .

RUN npm install -g pnpm

RUN pnpm install

RUN pnpm run build

EXPOSE 3000

CMD [ "npm", "run", "serve" ]