#!/bin/sh

# Installa i pacchetti desktop
sudo apt-get install -y lxdm lxde lxterminal

# Setup of the login screen
sudo install -o root -g root -m 644 /vagrant/files/etc/lxdm/lxdm-dss.conf /etc/lxdm/
sudo update-alternatives --install /etc/lxdm/default.conf lxdm.conf /etc/lxdm/lxdm-dss.conf 100
