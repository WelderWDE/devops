FROM alpine:latest

RUN apk update;\
    apk add --no-cache nginx

RUN adduser -D -g 'www' www; \
    chown -R www:www /var/lib/nginx;

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]