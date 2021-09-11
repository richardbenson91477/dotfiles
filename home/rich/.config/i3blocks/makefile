HOSTNAME=$(shell hostname)
USER=$(shell whoami)
config: config.m4
	m4 -D M4UID="$(USER)@$(HOSTNAME)" $^ > $@
