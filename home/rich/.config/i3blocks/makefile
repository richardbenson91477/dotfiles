HOSTNAME=$(shell hostname)
USER=$(shell whoami)
config: config.m4
	m4 -D M4UID="$(USER)@$(HOSTNAME)" $^ > $@
install: ./make-and-restart config.m4
	./make-and-restart
