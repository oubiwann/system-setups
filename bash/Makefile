REPO_BASHRC = .bashrc
REPO_PROFILE = .profile
BASHRC = ~/$(REPO_BASHRC)
PROFILE = ~/$(REPO_PROFILE)

$(BASHRC):
	cp $(REPO_BASHRC) ~/

$(PROFILE):
	cp $(REPO_PROFILE) ~/

install: $(BASHRC) $(PROFILE)

append:
	cat $(REPO_BASHRC) >> $(BASHRC)
	cat $(REPO_PROFILE) >> $(PROFILE)

.PHONY: append install
