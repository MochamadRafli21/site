FROM nginx:alpine
COPY ./site/default.conf /etc/nginx/conf.d/default_temp.conf
RUN apk update
RUN apk add gettext-base
RUN envsubst < default_temp.conf > default.conf
