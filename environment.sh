#!/bin/sh
sed -i -e 's/$PORT/'"$PORT"'/g;s/$DESTINATION/'"$DESTINATION"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
