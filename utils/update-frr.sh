#!/bin/bash

cd ~/LabConf/ && \
git checkout master
git fetch origin master && \
git pull origin master && \
vtysh -c 'sh run' > ./hosts/\$HOSTNAME/etc/frr/frr.conf && \
git add ./hosts/\$HOSTNAME/etc/frr/frr.conf && \
git commit -m "Updated \$HOSTNAME ./hosts/\$HOSTNAME/etc/frr/frr.conf" ./hosts/\$HOSTNAME/etc/frr/frr.conf && \
git push origin master

