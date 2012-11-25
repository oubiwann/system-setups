VIMRC = ~/.vimrc
GVIMRC = ~/_gvimrc
VIM = ~/.vim

$(VIMRC):
	cp .vimrc ~/

$(GVIMRC):
	cp _gvimrc ~/

$(VIM):
	cp -r .vim ~/

install: $(VIMRC) $(GVIMRC) $(VIM)
