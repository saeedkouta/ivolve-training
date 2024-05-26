#!/bin/bash

for s in {0..255}
do
    if ping -c 1 -W 1 192.168.1.$s > /dev/null 2>&1
    then
        echo "Server 192.168.1.$s is up and running"
    else
        echo "Server 192.168.1.$s is unreachable"
    fi
done
