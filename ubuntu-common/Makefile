SHARES = Desktop Documents Downloads Movies Music Pictures bin public_html
HOME = /home/oubiwann
UID = 1000
GID = 1000
FSTAB_TEMPLATE = XXX	$(HOME)/XXX	vboxsf	auto,rw,uid=$(UID),gid=$(GID)	0	0
LOCAL_FSTAB = vbox-fstab

dev:
	sudo apt-get install \
build-essential autoconf automake libtool \
vim vim-common vim-gui-common vim-runtime vim-gtk vim-nox \
vim-scripts \
vim-doc

lisp:
	sudo apt-get install \
cl-asdf cl-quicklisp cl-cffi cl-getopt cl-ppcre cl-usocket \
hyperspec \
sbcl sbcl-doc cl-clx-sbcl \
ecl

scheme:
	sudo apt-get install \
chicken-bin libchicken6 libchicken-dev

clojure:
	sudo apt-get install \
clojure clojure-contrib \
leiningen

vbox-tools: dev
	cd /media/*/VBOX* && ./VBoxLinuxAdditions.run

vbox-fstab-prep:
	--rmdir $(HOME)/Videos
	mkdir -p $(HOME)/Movies; chown $(UID):$(GID) $(HOME)/Movies
	mkdir -p $(HOME)/bin; chown $(UID):$(GID) $(HOME)/bin
	mkdir -p $(HOME)/public_html; chown $(UID):$(GID) $(HOME)/public_html
	-ln -s $(HOME)/Movies $(HOME)/Videos

$(LOCAL_FSTAB):
	$(foreach SHARE, $(SHARES), \
$(shell echo $(subst XXX,$(SHARE), $(FSTAB_TEMPLATE) >> $(LOCAL_FSTAB))))

vbox-update-fstab: vbox-fstab-prep $(LOCAL_FSTAB)
	cat $(LOCAL_FSTAB) >> /etc/fstab

install: dev

clean:
	rm $(LOCAL_FSTAB)

.PHONY: vbox-shares
