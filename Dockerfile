FROM ubuntu:jammy AS bolt
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \ 
 	apt-get upgrade -y && \
 	apt-get install -y git gcc wget curl vim xz-utils sudo build-essential && \
    wget https://apt.puppet.com/puppet-tools-release-focal.deb && \
    dpkg -i puppet-tools-release-focal.deb && \
    apt-get update && \
    apt-get install -y puppet-bolt && \
 	apt-get clean autoclean && \
 	apt-get autoremove -y

# TODO: install brew and then source it
