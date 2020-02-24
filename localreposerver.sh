#!/bin/bash

#install and start apache
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd

#install createrepo
sudo yum install createrepo -y

#install yum-utils
sudo yum install yum-utils -y

#Cceate a Directory to Store the Repositories
sudo mkdir -p /var/www/html/repos/{base,centosplus,extras,updates}

#Synchronize HTTP Repositories
sudo reposync -g -l -d -m --repoid=base --newest-only --download-metadata --download_path=/var/www/html/repos/
sudo reposync -g -l -d -m --repoid=base --newest-only --download-metadata --download_path=/var/www/html/repos/
sudo reposync -g -l -d -m --repoid=extras --newest-only --download-metadata --download_path=/var/www/html/repos/
sudo reposync -g -l -d -m --repoid=updates --newest-only --download-metadata --download_path=/var/www/html/repos/

#Create the New Repository
sudo createrepo /var/www/html

