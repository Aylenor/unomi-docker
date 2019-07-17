#!/bin/sh

# Wait for heathy ElasticSearch
# next wait for ES status to turn to Green
health_check="$(curl -fsSL "$ELASTICSEARCH_HOST:9200/_cat/health?h=status")"

until ([ "$health_check" = 'yellow' ] || [ "$health_check" = 'green' ]); do
    health_check="$(curl -fsSL "$ELASTICSEARCH_HOST:9200/_cat/health?h=status")"
    >&2 echo "Elastic Search is unavailable - waiting"
    sleep 1
done

# Creates environment variable for unomi
export UNOMI_ELASTICSEARCH_ADDRESSES=${ELASTICSEARCH_HOST}:${ELASTICSEARCH_PORT}

$MY_KARAF_HOME/bin/start
$MY_KARAF_HOME/bin/status # Call to status delays while Karaf creates karaf.log
tail -f $MY_KARAF_HOME/data/log/karaf.log