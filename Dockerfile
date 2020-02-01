# NGINX Webserver with Web-Game 2048 

FROM nginx:alpine
COPY 2048 /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
