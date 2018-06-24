FROM nginx:alpine

COPY ./server-configs-nginx /etc/nginx/
RUN rm -rf /etc/nginx/sites-enabled && mkdir -p /etc/nginx/sites-enabled
RUN rm -rf /etc/nginx/sites-available && mkdir -p /etc/nginx/sites-available

CMD ["nginx", "-g", "daemon off;"]