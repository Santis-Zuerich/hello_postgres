FROM node:20-bullseye
WORKDIR /app
COPY . .
RUN npm ci
RUN npm run build
CMD [ "node", "build/index.js" ]
EXPOSE 3000