FROM nginx:alpine
COPY ./site/default.conf /etc/nginx/conf.d/default.conf
