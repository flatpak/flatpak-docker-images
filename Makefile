build:
	docker build --no-cache --pull -t flatpak/flatpak-builder .

deploy:
	docker push flatpak/flatpak-builder
