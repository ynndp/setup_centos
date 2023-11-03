#!/bin/bash

##COMMAND###
timedatectl set-timezone Asia/Jakarta
yum update -y
yum install firewalld
systemctl start firewalld
systemctl enable firewalld
firewall-cmd --zone=public --add-service=http --permanent && firewall-cmd --zone=public --add-service=https --permanent
firewall-cmd --reload
yum -y install epel-release
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
yum install nginx
setsebool httpd_can_network_connect on -P


##STATUS###
clear
echo "SETUP VPS CENTOS 7" | tee log-install.txt
echo "===============================================" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "Selesai" | tee -a log-install.txt