#!/bin/bash

cd ~/LabConf/hosts/$HOSTNAME/ && \
git fetch origin master && \
git pull origin master && \
vtysh -c 'sh run' > ~/LabConf/hosts/$HOSTNAME/frr.conf && \
git commit -a -m "Updated $HOSTNAME frr.conf" frr.conf && \
git push origin master
