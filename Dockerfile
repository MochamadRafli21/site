ARG PORT
ARG DESTINATION
FROM nginx:alpine
COPY /default.conf /etc/nginx/nginx.conf
ENV PORT $PORT
ENV DESTINATION $DESTINATION
CMD sed -i -e 's#$PORT#'"$PORT"'#g;s#$DESTINATION#'"$DESTINATION"'#g;' /etc/nginx/nginx.conf && nginx -g 'daemon off;' && nginx -s reload