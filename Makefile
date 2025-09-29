.PHONY: all install clean

all: install
install: mcs mcs_init mcs_start

mcs: scripts/mcs
	$(RM) ${HOME}/.local/bin/mcs
	ln -s  `pwd`/scripts/mcs ${HOME}/.local/bin/mcs
mcs_init: scripts/mcs_init
	$(RM) ${HOME}/.local/bin/mcs_init
	ln -s  `pwd`/scripts/mcs_init ${HOME}/.local/bin/mcs_init
mcs_start: scripts/mcs_start
	$(RM) ${HOME}/.local/bin/mcs_start
	ln -s  `pwd`/scripts/mcs_start ${HOME}/.local/bin/mcs_start

clean:
	$(RM) ${HOME}/.local/bin/mcs
	$(RM) ${HOME}/.local/bin/mcs_init
	$(RM) ${HOME}/.local/bin/mcs_start
