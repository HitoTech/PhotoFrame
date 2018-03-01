#!/bin/sh

# remove unused software
apt-get update && \
apt-get purge -y wolfram-engine libreoffice* minecraft-pi sonic-pi && \
apt-get clean -y && \
apt-get autoremove -y

# update system
apt-get upgrade -y && \
apt-get dist-upgrade -y

apt-get install -y qiv
