#!/bin/bash

AMOUNT=${1-1}

for i in `seq 1 $AMOUNT`
do
    docker run --name py-micro-$i \
    -d payara:micro.jcache \
    java -jar /opt/payara-micro.jar --deploymentDir /opt/payara-micro-wars/ &
done
