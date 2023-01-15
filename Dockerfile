FROM nginx:alpine
RUN apk update
RUN apk add gettext-libs
RUN apk add gettext
RUN envsubst < ./site/default.conf > ./site/default_temp.conf
COPY ./site/default_temp.conf /etc/nginx/conf.d/default_temp.conf
