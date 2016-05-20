#!/bin/bash - 
set -o nounset                              # Treat unset variables as an error

IP=127.0.0.1
PORT=${1-1080}
MSG=${2-DefaultMSG}

curl -H "Accept: application/json" -H "Content-Type: application/json" -X PUT -d "{$MSG}" http://$IP:$PORT/rest-jcache/webresources/cache?key=test
