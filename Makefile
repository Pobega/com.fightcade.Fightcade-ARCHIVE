.PHONY: build install bundle

download:
	curl https://web.fightcade.com/download/Fightcade-linux-latest.tar.gz \
		--output fightcade.tar.gz
	tar xvf fightcade.tar.gz
	rm fightcade.tar.gz

build:
	flatpak-builder  \
		--keep-build-dirs \
		--repo=repo \
		--force-clean \
		build-dir/ \
		com.fightcade.Fightcade.yml

install:
	flatpak-builder  \
		--keep-build-dirs \
		--repo=repo \
		--user \
		--install \
		--force-clean \
		build-dir/ \
		com.fightcade.Fightcade.yml

bundle:
	flatpak build-bundle repo fightcade.flatpak com.fightcade.Fightcade

clean:
	rm -rf build/
