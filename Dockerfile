FROM alpine:latest
EXPOSE 80

RUN apk update --no-cache \
    && apk add nginx

COPY app .
COPY config/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
