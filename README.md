# docker-couchdb-lucene
Docker for CouchDB Lucene

## Build parameters
ARG COUCHDB_LUCENE_VERSION=2.0.0
ARG COUCHDB_PORT=5984
ARG COUCHDB_SERVER=couchdb

docker build --build-arg COUCHDB_SERVER=mycouchdb -t couchdb-lucene .

## Running the service

docker run --name indexer -d -P couchdb-lucene -v ./indexes:/opt/couchdb-lucene/indexes

