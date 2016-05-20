#!/bin/bash

AMOUNT=${1-1}

for i in `seq 1 $AMOUNT`
do
    j= && j+=$i && j+=080

    docker run \
    --name py-micro-$i \
    -p $j:8080 \
    -d payara:micro.jcache \
    java -jar /opt/payara-micro.jar --deploymentDir /opt/payara-micro-wars/ &
done
