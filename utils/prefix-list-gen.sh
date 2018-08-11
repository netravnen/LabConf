bgpq3 -3 -4 -A -D -l vultr-only-v4 -m 24 -h rr.ntt.net AS-CHOOPA > ~/LabConf/prefix-list/vultr-only-v4.list
bgpq3 -3 -6 -A -D -l vultr-only-v6 -m 48 -h rr.ntt.net AS-CHOOPA > ~/LabConf/prefix-list/vultr-only-v6.list
