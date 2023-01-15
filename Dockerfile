ARG PORT
ARG DESTINATION
ARG Domain
FROM nginx:alpine
COPY /default.conf /etc/nginx/conf.d/default.conf
ENV PORT $PORT
ENV DESTINATION $DESTINATION
CMD sed -i -e 's#$PORT#'"$PORT"'#g;s#$DESTINATION#'"$DESTINATION"'#g;' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'

RUN apk add openssl;
CMD openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=$Domain" -addext "subjectAltName=DNS:$Domain" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt;
