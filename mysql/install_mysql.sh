#!/bin/env bash

data_dir="/data0/src"
repo_version="mysql57-community-release-el7-11.noarch.rpm"

[ ! -d ${data_dir} ] && mkdir -p ${data_dir}

if [ ! -f ${data_dir}/${repo_version} ]
then
    cd ${data_dir} && wget https://repo.mysql.com/${repo_version}
fi

rpm -ivh ${data_dir}/${repo_version}

yum repolist all | grep mysql
yum install -y yum-utils
yum-config-manager --disable mysql57-community >/dev/null 2>&1
yum-config-manager --enable mysql56-community >/dev/null 2>&1
yum repolist enabled | grep mysql

yum install -y mysql-community-server
systemctl start mysqld.service
systemctl status mysqld.service

