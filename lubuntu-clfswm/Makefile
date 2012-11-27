BIN_DIR = /usr/bin
SESSIONS_DIR = /usr/share/xsessions/
SESSION_FILES = *.desktop
START_SCRIPTS = *-custom
deps:
	sudo apt-get install clfswm

update-session-selection:
	sudo cp $(wildcard $(START_SCRIPTS)) $(BIN_DIR)
	sudo cp $(wildcard $(SESSION_FILES)) $(SESSIONS_DIR)

wm: deps update-session-selection

install: wm
