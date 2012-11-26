bash:
	cd bash && make install

vim:
	cd vim && make install

ubuntu-common:
	cd ubuntu-common && make install

lubuntu-awesome: ubuntu-common bash vim
	cd lubuntu-awesome && make install

lubuntu-clfswm: ubuntu-common bash vim
	cd ubuntu-common && make lisp
	cd lubuntu-clfswm && make install

.PHONY: ubuntu-common lubuntu-awesome lubuntu-clfswm bash vim
