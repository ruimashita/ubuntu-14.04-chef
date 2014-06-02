FROM ubuntu:14.04

MAINTAINER takuya.wakisaka@moldweorp.com

RUN apt-get -y update
RUN apt-get -y install curl build-essential git
RUN curl -L https://www.opscode.com/chef/install.sh | bash

