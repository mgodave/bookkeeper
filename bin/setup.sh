#!/bin/bash

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home

./dlog admin bind -l /ledgers -s 127.0.0.1:7000 -c distributedlog://127.0.0.1:7000/messaging/my_namespace
./dlog tool create -u distributedlog://127.0.0.1:7000/messaging/my_namespace -r messaging-stream- -e 1-5

