FROM docker.elastic.co/elasticsearch/elasticsearch:6.2.3

RUN bin/elasticsearch-plugin remove --purge x-pack && \
    rm -rf plugins/x-pack && \
    rm -rf /usr/share/elasticsearch/config/x-pack

EXPOSE 9200 9300

