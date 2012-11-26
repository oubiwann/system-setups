AUTOSTART = /etc/xdg/lxsession/Lubuntu/autostart
LOCAL_AUTOSTART = autostart

deps:
	sudo apt-get install clfswm

update-autostart:
	sudo mv $(AUTOSTART) $(AUTOSTART).`date +%Y%m%d.%H%M%S`
	sudo cp $(LOCAL_AUTOSTART) $(AUTOSTART)

wm: deps update-autostart

install: wm
