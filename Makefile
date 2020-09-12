download:
	curl https://web.fightcade.com/download/Fightcade-linux-latest.tar.gz \
		--output fightcade.tar.gz
	tar xvf fightcade.tar.gz
	rm fightcade.tar.gz

build:
	flatpak-builder build \
		--force-clean \
		com.fightcade.Fightcade.yml

install:
	flatpak-builder build \
		--user \
		--install \
		--force-clean \
		com.fightcade.Fightcade.yml
