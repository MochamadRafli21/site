FROM nginx:alpine
COPY ./site/default_temp.conf /etc/nginx/conf.d/default.conf
RUN apt-get update
RUN apt-get install -y gettext-base
RUN envsubst < default_temp.conf > default.conf
