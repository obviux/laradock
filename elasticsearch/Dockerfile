FROM docker.elastic.co/elasticsearch/elasticsearch:5.4.1

COPY --chown=elasticsearch:elasticsearch elasticsearch.yml /usr/share/elasticsearch/config/
RUN bin/elasticsearch-plugin remove x-pack
RUN rm -rf /usr/share/elasticsearch/config/x-pack

EXPOSE 9200 9300
