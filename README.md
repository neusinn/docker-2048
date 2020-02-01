# docker-2048

This is a adapted clone of the of the 2048 Game.

>Based on the web game of [gabrielecirulli/2048](https://github.com/gabrielecirulli/2048) 
>and the dockerization from [alexwhen/docker-2048](https://github.com/alexwhen/docker-2048)


## Dockerfile
Creates an NGINX Webserver bases on Alpine Linux with installed 2048 Game as WebApp. 
Port 80 is exposed for HTTP access.

    # NGINX Webserver with Web-Game 2048 
    FROM nginx:alpine
    COPY docker-2048/2048 /usr/share/nginx/html
    EXPOSE 80
    CMD ["nginx", "-g", "daemon off;"]

## Run the docker container with your own build

    git clone https://github.com/neusinn/docker-2048.git
    docker build -t "docker-2048" .
    docker run -d -p 80:80 docker-2048

## Access the web game localy

    http://127.0.0.1:80
