#!/bin/bash

#backup repos configs
sudo mkdir /etc/yum.repos.backup/
sudo mv /etc/yum.repos.d/*.repo /etc/yum.repos.backup/

# create repo config file
sudo vi /etc/yum.repos.d/localnet.repo

#add config to file

# [localnet]
# name=Local repo
# baseurl=http://update-server2
# enabled=1
# gpgcheck=0


