FROM alpine:3.2
MAINTAINER Didiet Noor <dnoor@kulina.id>
ENV TERM dumb
RUN apk add --update nginx && rm -rf /var/cache/apk/*
COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx-fpm.conf /etc/nginx/conf.d/default.conf
COPY index.html /www/index.html

VOLUME /etc/nginx
VOLUME /www

EXPOSE 80

CMD ["nginx"]
