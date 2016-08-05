#!/bin/bash - 
set -o nounset                              # Treat unset variables as an error

HOST=85016
JELASTICENV=payara-micro-example
MSG=${1-JelasticMSG}

curl -H "Accept: application/json" -H "Content-Type: application/json" -X PUT -d "{$MSG}" http://docker$HOST-$JELASTICENV.demo.jelastic.com/rest-jcache/webresources/cache?key=test
