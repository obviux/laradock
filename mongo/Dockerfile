FROM mongo:3.4.10

MAINTAINER Mahmoud Zalt <mahmoud@zalt.me>

#COPY ./mongod.conf /etc/mongod.conf

VOLUME /data/db /data/configdb

CMD ["mongod", "-f", "/etc/mongod.conf"]

EXPOSE 27017

