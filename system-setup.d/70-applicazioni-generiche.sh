#!/bin/sh

# Scrittura di documenti
sudo apt-get install -y libreoffice hunspell

# Editor di testo
sudo apt-get install -y emacs geany

# Supporto per la lingua italiana
sudo apt-get install -y `check-language-support -l it`
