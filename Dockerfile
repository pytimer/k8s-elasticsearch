FROM golang:1.13.5 AS builder
COPY elasticsearch_discovery.go go.mod go.sum /
RUN CGO_ENABLED=0 GOOS=linux GO111MODULE=on go build -a -ldflags "-w" -o /elasticsearch_discovery /elasticsearch_discovery.go


FROM docker.elastic.co/elasticsearch/elasticsearch-oss:7.7.1

VOLUME ["/data"]
EXPOSE 9200 9300

COPY --from=builder /elasticsearch_discovery bin/
COPY run.sh bin/

USER root
RUN chown -R elasticsearch:elasticsearch ./
CMD ["bin/run.sh"]