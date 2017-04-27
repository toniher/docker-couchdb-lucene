#!/bin/sh

sed -i 's/host=localhost/host=0.0.0.0/' /opt/couchdb-lucene/conf/couchdb-lucene.ini
sed -i 's/localhost:5984/'"$COUCHDB_SERVER"':'"$COUCHDB_PORT"'/' /opt/couchdb-lucene/conf/couchdb-lucene.ini
chown -R couchdb:couchdb /opt/couchdb-lucene
runuser -l couchdb -c './bin/run'
