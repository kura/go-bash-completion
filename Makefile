.PHONY: install uninstall
install:
	cp etc/bash_completion.d/go /etc/bash_completion.d/go

uninstall:
	rm /etc/bash_completion.d/go
