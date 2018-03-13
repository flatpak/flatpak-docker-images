all: base freedesktop-1-6 gnome-3-26

base:
	docker build --no-cache --pull -t flatpak/flatpak-builder:base .

freedesktop-1-6:
	docker build -f Dockerfile.freedesktop-1-6 --no-cache -t flatpak/flatpak-builder:freedesktop-1-6 .

gnome-3-26:
	docker build -f Dockerfile.gnome-3-26 --no-cache -t flatpak/flatpak-builder:gnome-3-26 .

deploy:
	docker push flatpak/flatpak-builder:base
	docker push flatpak/flatpak-builder:freedesktop-1-6
	docker push flatpak/flatpak-builder:gnome-3-26
