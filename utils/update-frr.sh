#!/bin/bash

cd ~/LabConf/hosts/$HOSTNAME/ && \
git checkout master

git fetch origin master && \
git pull origin master && \
vtysh -c 'sh run' > etc/frr/frr.conf && \
git add etc/frr/frr.conf && \
git commit -m "Updated $HOSTNAME etc/frr/frr.conf" etc/frr/frr.conf && \
git push origin master
