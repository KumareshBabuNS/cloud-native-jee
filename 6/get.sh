#!/bin/bash - 
set -o nounset                              # Treat unset variables as an error

HOST=85016
JELASTICENV=payara-micro-example
IP=127.0.0.1

curl http://docker$HOST-$JELASTICENV.demo.jelastic.com/rest-jcache/webresources/cache?key=test
