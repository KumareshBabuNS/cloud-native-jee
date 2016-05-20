#!/bin/bash

AMOUNT=${1-1}

for i in `seq 1 $AMOUNT`
do
    docker kill py-micro-$i 
    docker rm py-micro-$i 
done
