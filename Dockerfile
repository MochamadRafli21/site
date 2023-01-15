ARG PORT
ARG DESTINATION
ARG Domain
FROM nginx:alpine
COPY /default.conf /etc/nginx/conf.d/default.conf
ENV PORT $PORT
ENV DESTINATION $DESTINATION
ENV DOMAIN $Domain
CMD sed -i -e 's#$PORT#'"$PORT"'#g;s#$DESTINATION#'"$DESTINATION"'#g;s#$Domain#'"$DOMAIN"'#g;' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
