FROM nginx:alpine
COPY ./site/default.conf /etc/nginx/conf.d/default_temp.conf
RUN apt-get update
RUN apt-get install -y gettext-base
RUN envsubst < default_temp.conf > default.conf
