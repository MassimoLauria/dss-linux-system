# Copyright (C) 2020 by Massimo Lauria <massimo.lauria@uniroma1.it>
#
# Time-stamp: "2020-02-28, 17:01 (CET) Massimo Lauria"
#
#
## Makefile to setup the student machine
#



all: machinesetup

machinesetup: systemsetup usersetup

.PHONY: all machinesetup usersetup systemsetup

systemsetup:
	@echo "***** Script di configurazione di sistema *****"
	@for sh_snippet in system-setup.d/*.sh; do \
	     . $$sh_snippet;                       \
	 done

usersetup:
	@echo "***** Script di configurazione degli utenti *****"
	@for sh_snipper in user-setup.d/*.sh; do \
	     . $$sh_snippet;                     \
	 done
