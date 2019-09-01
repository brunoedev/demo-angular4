#stage 1
FROM nginx:alpine
COPY ./dist/curso-angular4 /usr/share/nginx/html
EXPOSE 80 443
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]