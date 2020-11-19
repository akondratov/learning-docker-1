FROM alpine:latest

RUN apk update 
RUN apk add nginx
RUN mkdir /run/nginx && mkdir /app

COPY app/index.html /app/index.html
COPY config/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
