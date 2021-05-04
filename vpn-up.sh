#!/bin/bash

if [ -z $1 ]
  then
    echo "Token missing."
    exit 1
fi

docker run --cap-add=NET_ADMIN -p 51121:3380 -e PASSWORD=$1 -e AUTH_GROUP=XXX -e USER=YYY -e CSD_OS=win -e CSD_HOSTNAME=ZZZ -e RDP_IP=XXX cisco-vpn