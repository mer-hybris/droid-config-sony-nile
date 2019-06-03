#!/bin/bash

while [ "$(getprop sys.boot_completed)" != "1" ]; do
    echo "Waiting for boot complete"
    sleep 1
done

sleep 1

