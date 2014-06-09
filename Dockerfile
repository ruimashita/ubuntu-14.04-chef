FROM ubuntu:14.04

MAINTAINER takuya.wakisaka@moldweorp.com


RUN echo "deb http://jp.archive.ubuntu.com/ubuntu/ trusty main restricted \n\
deb-src http://jp.archive.ubuntu.com/ubuntu/ trusty main restricted \n\
deb http://jp.archive.ubuntu.com/ubuntu/ trusty-updates main restricted \n\
deb-src http://jp.archive.ubuntu.com/ubuntu/ trusty-updates main restricted \n\
deb http://jp.archive.ubuntu.com/ubuntu/ trusty universe \n\
deb-src http://jp.archive.ubuntu.com/ubuntu/ trusty universe \n\
deb http://jp.archive.ubuntu.com/ubuntu/ trusty-updates universe \n\
deb-src http://jp.archive.ubuntu.com/ubuntu/ trusty-updates universe \n\
deb http://jp.archive.ubuntu.com/ubuntu/ trusty multiverse \n\
deb-src http://jp.archive.ubuntu.com/ubuntu/ trusty multiverse \n\
deb http://jp.archive.ubuntu.com/ubuntu/ trusty-updates multiverse \n\
deb-src http://jp.archive.ubuntu.com/ubuntu/ trusty-updates multiverse \n\
deb http://jp.archive.ubuntu.com/ubuntu/ trusty-backports main restricted universe multiverse \n\
deb-src http://jp.archive.ubuntu.com/ubuntu/ trusty-backports main restricted universe multiverse \n\
deb http://security.ubuntu.com/ubuntu trusty-security main restricted \n\
deb-src http://security.ubuntu.com/ubuntu trusty-security main restricted \n\
deb http://security.ubuntu.com/ubuntu trusty-security universe \n\
deb-src http://security.ubuntu.com/ubuntu trusty-security universe \n\
deb http://security.ubuntu.com/ubuntu trusty-security multiverse \n\
deb-src http://security.ubuntu.com/ubuntu trusty-security multiverse" > /etc/apt/sources.list



RUN apt-get -y update
RUN apt-get -y install curl build-essential git
RUN curl -L https://www.opscode.com/chef/install.sh | bash

