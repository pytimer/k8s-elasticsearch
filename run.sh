#!/bin/bash

set -ex

./bin/elasticsearch_discovery
exec /usr/local/bin/docker-entrypoint.sh eswrapper