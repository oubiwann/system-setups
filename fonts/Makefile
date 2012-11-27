FONT_DIR = ~/.fonts
PROGGY = $(FONT_DIR)/ProggyCleanSZBP.ttf

$(FONT_DIR):
	mkdir -p $(FONT_DIR)

$(PROGGY): $(FONT_DIR)
	cp ProggyCleanSZBP.ttf $(FONT_DIR)

fonts:
	sudo apt-get install \
fonts-liberation \
ttf-bitstream-vera ttf-dejavu-extra ttf-dejavu-core ttf-dejavu \
fonts-ubuntu-font-family-console ttf-ubuntu-font-family \
tex-gyre \
ttf-mscorefonts-installer

install: fonts $(PROGGY)

.PHONY: fonts install
