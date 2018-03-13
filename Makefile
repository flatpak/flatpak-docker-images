all: base freedesktop-1-6 gnome-3-26

base:
	docker build --no-cache --pull -t flatpak/flatpak-builder:base .

freedesktop-1-6:
	docker build -f freedesktop-1-6/Dockerfile --no-cache -t flatpak/flatpak-builder:freedesktop-1-6 .

gnome-3-26:
	docker build -f gnome-3-26/Dockerfile --no-cache -t flatpak/flatpak-builder:gnome-3-26 .

push:
	docker tag flatpak/flatpak-builder:base docker.io/flatpak/flatpak-builder:base
	docker tag flatpak/flatpak-builder:freedesktop-1-6 docker.io/flatpak/flatpak-builder:freedesktop-1-6
	docker tag flatpak/flatpak-builder:gnome-3-26 docker.io/flatpak/flatpak-builder:gnome-3-26
	docker push docker.io/flatpak/flatpak-builder:base
	docker push docker.io/flatpak/flatpak-builder:freedesktop-1-6
	docker push docker.io/flatpak/flatpak-builder:gnome-3-26
