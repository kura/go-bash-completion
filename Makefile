.PHONY: install uninstall deb

install:
	cp etc/bash_completion.d/go /etc/bash_completion.d/go

uninstall:
	rm /etc/bash_completion.d/go

deb:
	dpkg-deb -z8 -Zgzip --build ../go-bash-completion
