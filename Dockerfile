FROM nginx:alpine

RUN apk update \
    && apk upgrade \
    && apk add --no-cache bash \
    && adduser -D -H -u 1000 -s /bin/bash www-data

RUN rm -rf /etc/nginx/sites-enabled \
    && mkdir -p /etc/nginx/sites-enabled \
    && rm -rf /etc/nginx/sites-available \
    && mkdir -p /etc/nginx/sites-available;

COPY ./server-configs-nginx /etc/nginx/

CMD ["nginx", "-g", "daemon off;"]