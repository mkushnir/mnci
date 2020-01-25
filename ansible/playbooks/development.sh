#!/bin/sh
#
pkg install sudo bash vim-console git autotools pkgconf
# configure sudo?
pkg install nginx
#configure nginx

(
    mkdir development && cd development
    for i in mndiag mncommon mnthr mnapp mnfcgi mnhtools
    do
        git clone git@github.com:mkushnir/${i}.git && cd $i && ./do-it init
    done
)

yum install epel-release

yum install ntfs-3g fuse #epel

yum install vim git
yum install automake libtool gcc gcc-c++ zlib-devel libev-devel openssl-devel libev-devel

Or:

yum groupinstall "Development Tools"

apt-get install autoconf libtool build-essential libev-dev libz-dev pkgconf libssl-dev


Or:

pacman -S base-devel libyaml libev


#For jenkins:
#    openjdk8
#    useradd jenkins?
#    add id_rsa-jenkins-test to $HOME/.ssh/authorized_keys
#    procfs /proc


Host setup for ansible:
    ansible-playbook -b -i inventory playbooks/setup.yml -t bootstrap,authkeys

Host setup for jenkins slave:
    ansible-playbook -b -i inventory playbooks/setup.yml -t jenkins

Host setup for dev:
    ansible-playbook -b -i inventory playbooks/setup.yml -t dev


Development tasks:
