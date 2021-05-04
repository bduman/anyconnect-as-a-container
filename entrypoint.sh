#!/bin/bash

iptables -t nat -A PREROUTING -p tcp --dport 3380 -j DNAT --to-destination  $RDP_IP:3389
iptables -t nat -A POSTROUTING -j MASQUERADE

( echo $PASSWORD ) | openconnect --csd-wrapper=csd-post.sh $CSD_HOSTNAME --authgroup=$AUTH_GROUP --user=$USER --passwd-on-stdin --timestamp --os=$CSD_OS