ARG PORT
ARG DESTINATION

FROM nginx:alpine
COPY /default.conf /etc/nginx/conf.d/default.conf
ENV PORT $PORT
ENV DESTINATION $DESTINATION
CMD ['environment.sh']
