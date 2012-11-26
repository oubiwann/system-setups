REPO_VIMRC = .vimrc
REPO_GVIMRC = _gvimrc
REPO_VIM = .vim
VIMRC = ~/$(REPO_VIMRC)
GVIMRC = ~/$(REPO_GVIMRC)
VIM = ~/$(REPO_VIM)

$(VIMRC):
	cp $(REPO_VIMRC) ~/

$(GVIMRC):
	cp $(REPO_GVIMRC) ~/

$(VIM):
	cp -r $(REPO_VIM) ~/

install: $(VIMRC) $(GVIMRC) $(VIM)
