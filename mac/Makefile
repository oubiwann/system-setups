BREW = /usr/local/bin/brew
APP_DIR = /Applications/Non-Standard
TBIRD = Thunderbird-17.0
TBIRD_QUERY = "product=$(TBIRD)&amp;os=osx&amp;lang=en-US"
WGET = /usr/local/bin/wget

$(APP_DIR):
	mkdir -p $(APP_DIR)/Messaging
	mkdir -p $(APP_DIR)/Web
	mkdir -p $(APP_DIR)/TextAndPub
	mkdir -p $(APP_DIR)/Graphics

$(BREW):
	ruby -e "$$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

$(WGET): $(BREW)
	brew install $(WGET)

downloads: $(WGET) $(APP_DIR)
	$(WGET) http://downloads.sourceforge.net/iterm/iTerm_0.10.zip
	$(WGET) https://s3.amazonaws.com/temp2.kodowa.com/playground/launcher.jar
	$(WGET) "https://download.mozilla.org/?$(TBIRD_QUERY)"
	mv "index.html?$(TBIRD_QUERY)" $(TBIRD).dmg
	$(WGET) "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-19.0a2.en-US.mac.dmg"
	$(WGET) https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
	$(WGET) http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.1.dmg
	$(WGET) https://github.com/downloads/b4winckler/macvim/MacVim-snapshot-65.tbz
	mv *.dmg *.zip *.jar ~/Downloads/

mount:
	$(foreach FILE, $(wildcard ~/Downloads/*.dmg), echo '$(FILE)';)
	$(shell for FILE in {~/Downloads/*.dmg}; do echo "$$FILE"; done)
	#$(foreach FILE, $(wildcard ~/Downloads/*.dmg), hdiutil attach '$(FILE)';)

untar:

install: brew-apps downloads mount untar

.PHONY: brew-apps downloads install $(APP_DIR) mount
