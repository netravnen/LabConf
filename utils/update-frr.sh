#!/bin/bash

cd ~/LabConf/ && \
git checkout master

git fetch origin master && \
git pull origin master && \
vtysh -c 'sh run' > ./hosts/$(echo $HOSTNAME)/etc/frr/frr.conf && \
git add ./hosts/$(echo $HOSTNAME)/etc/frr/frr.conf && \
git commit -m "Updated $(echo $HOSTNAME) ./hosts/$(echo $HOSTNAME)/etc/frr/frr.conf" ./hosts/$(echo $HOSTNAME)/etc/frr/frr.conf && \
git push origin master
