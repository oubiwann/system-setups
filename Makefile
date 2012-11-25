ubuntu-common:
	cd ubuntu-common && make install

lubuntu-awesome: ubuntu-common
	cd lubuntu-awesome && make install

lubuntu-clfswm: ubuntu-common
	cd ubuntu-common && make lisp
	cd lubuntu-clfswm && make install
