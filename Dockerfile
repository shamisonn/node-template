FROM node:18.16.0-slim as build

WORKDIR /app
COPY . .

RUN npm ci
RUN npm run build

FROM node:18.16.0-slim as prod

COPY package*.json ./
RUN npm ci --omit=dev
COPY --from=build /app/dist .

USER node
CMD ["node", "index.js"]
