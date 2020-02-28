#!/bin/sh

RSTUDIOURL=https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.5033-amd64.deb

# R programming
sudo apt-get install -y r-base r-base-html r-doc-html

# R Studio
sudo apt-get install -y gdebi-core
wget $RSTUDIOURL
sudo gdebi -n $(basename $RSTUDIOURL)
rm -f $(basename $RSTUDIOURL)
