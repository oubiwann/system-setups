BREW = /usr/local/bin/brew
APP_DIR = /Applications/Non-Standard

$(APP_DIR):
	mkdir -p $(APP_DIR)/Messaging
	mkdir -p $(APP_DIR)/Web
	mkdir -p $(APP_DIR)/TextAndPub
	mkdir -p $(APP_DIR)/Graphics

$(BREW):
	ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

brew-apps: $(BREW)
	brew install wget

downloads: brew-apps $(APP_DIR)
	wget http://downloads.sourceforge.net/iterm/iTerm_0.10.zip
	wget https://s3.amazonaws.com/temp2.kodowa.com/playground/launcher.jar
	wget "https://www.mozilla.org/thunderbird/download/?product=thunderbird-17.0&os=osx&lang=en-US"
	wget "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-19.0a2.en-US.mac.dmg"
	wget https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
	wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.1.dmg
	mv *.dmg *.zip *.jar ~/Downloads/

macvim: brew-apps $(APP_DIR)
	wget https://github.com/b4winckler/macvim/archive/master.tar.gz
	tar xvfz master.tar.gz

install: brew-apps downloads macvim
	
.PHONY: brew-apps downloads install
