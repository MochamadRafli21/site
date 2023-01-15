ARG PORT
ARG HOST

FROM nginx:alpine
COPY /default.conf /etc/nginx/conf.d/default.conf
ENV PORT=${PORT}
ENV HOST=${HOST}
CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && sed -i -e 's/$HOST/'"$HOST"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
