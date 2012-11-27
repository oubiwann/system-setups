bash:
	cd bash && make install

vim:
	cd vim && make install

backgrounds:
	cd backgrounds && make install

fonts:
	cd fonts && make install

ubuntu-common:
	cd ubuntu-common && make install

lubuntu-awesome: backgrounds ubuntu-common bash vim
	cd lubuntu-awesome && make install

lubuntu-clfswm: backgrounds ubuntu-common bash vim
	cd ubuntu-common && make lisp
	cd lubuntu-clfswm && make install

clean:
	cd ubuntu-common && make clean

.PHONY: bash vim backgrounds fonts ubuntu-common lubuntu-awesome lubuntu-clfswm
