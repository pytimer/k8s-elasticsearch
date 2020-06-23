#!/bin/bash

set -ex

./bin/elasticsearch_discovery >> ./config/elasticsearch.yml
exec /usr/local/bin/docker-entrypoint.sh eswrapper