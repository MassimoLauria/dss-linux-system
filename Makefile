# Copyright (C) 2020 by Massimo Lauria <lauria@kth.se>
#
# Time-stamp: "2020-02-28, 15:22 (CET) Massimo Lauria"
#
#
## Makefile to setup the student machine
#


all: systemsetup usersetup

.PHONY: all userseup systemsetup

systemsetup:
	sudo run-parts system-setup.d

usersetup:
	sudo run-parts user-setup.d
