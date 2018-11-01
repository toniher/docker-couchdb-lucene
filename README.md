# docker-couchdb-lucene
Docker for CouchDB Lucene

## Build parameters
ARG COUCHDB_LUCENE_VERSION=2.1.0

docker build -t toniher/couchdb-lucene .

## Running the service
ENV COUCHDB_PORT 5984

ENV COUCHDB_SERVER couchdb 

docker run --name indexer -d -P toniher/couchdb-lucene -v ./indexes:/opt/couchdb-lucene/indexes

