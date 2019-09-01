#stage 1
FROM node:latest as node
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build --prod

#stage 2
FROM nging:alpine
COPY --from=node /app/dist/curso-angular4 /usr/share/nginx/html