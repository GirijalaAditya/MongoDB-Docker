FROM alpine

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/main' >> /etc/apk/repositories

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/community' >> /etc/apk/repositories

RUN apk update
RUN apk add mongodb=3.4.4-r0

VOLUME ["/data/db"]
WORKDIR /data
EXPOSE 27017

CMD ["mongod"]

