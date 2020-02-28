#!/bin/sh

LINGUA=it_IT.utf8

# Testa se il linguaggio italiano esiste.
locale -a | grep $LINGUA  > /dev/null
if test $? -ne 0; then
    sudo locale-gen $LINGUA
fi

sudo update-locale $LINGUA

# Imposta il fuso orario
sudo timedatectl set-timezone Europe/Rome
