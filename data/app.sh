#!/usr/bin/env bash

if [ -z ${instances+x} ]; then 
    $instances = 1
fi

if [ -z ${port+x} ]; then 
    $port = 5201
fi

for ((i = port ; i < port+instances ; i++ )); do
    echo "start instance at port " $i
    if [ $one = "true" ]; then
        iperf3 -s --port $i -1 &
    else
        iperf3 -s --port $i &
    fi
done

sleep infinity & wait