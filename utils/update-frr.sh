#!/bin/bash

cd ~/LabConf/hosts/bart/ && git checkout master
git fetch origin master && git pull origin master && vtysh -c 'sh run' > ~/LabConf/hosts/bart/etc/frr/frr.conf && git commit -m "Updated bart ./etc/frr/frr.conf" frr.conf && git push origin master
