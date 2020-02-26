#!/bin/bash

#install and start apache
sudo yum install vsftpd -y
sudo systemctl start vsftpd

#install createrepo
sudo yum install createrepo -y

#install yum-utils
sudo yum install yum-utils -y

#Create an FTP Directory to Store the Repositories
sudo mkdir -p /var/ftp/repos

#Synchronize HTTP Repositories
sudo reposync -g -l -d -m --repoid=rhui-rhel-7-server-rhui-rpms --newest-only --download-metadata --download_path=/var/ftp/repos/

#Create the New Repository
sudo createrepo /var/ftp

