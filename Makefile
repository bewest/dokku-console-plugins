
update:
	sudo sh -c "( cd /var/lib/dokku/plugins/dokku-console; sudo git pull ); git checkout $(git symbolic-ref HEAD)"

install:
	git clone . /var/lib/dokku/plugins/dokku-console

.PHONY: update install
