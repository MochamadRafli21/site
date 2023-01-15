FROM nginx:latest
RUN apk update
RUN apk add gettext-libs
RUN apk add gettext
RUN envsubst < default.conf > default_temp.conf
COPY default_temp.conf /etc/nginx/conf.d/default_temp.conf
