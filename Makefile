all: build-base build-freedesktop build-gnome build-kde

build-base:
	docker build --pull -t flatpak/flatpak-builder:base .

FREEDESKTOP_VERSION=19.08
build-freedesktop: build-base
	docker build -f freedesktop/Dockerfile --no-cache --build-arg VERSION=${FREEDESKTOP_VERSION} -t flatpak/flatpak-builder:freedesktop-$(subst .,-,${FREEDESKTOP_VERSION}) .

GNOME_VERSION=3.36
build-gnome: build-base
	docker build -f gnome/Dockerfile --no-cache --build-arg VERSION=${GNOME_VERSION} -t flatpak/flatpak-builder:gnome-$(subst .,-,${GNOME_VERSION}) .

KDE_VERSION=5.14
build-kde: build-base
	docker build -f kde/Dockerfile --no-cache --build-arg VERSION=${KDE_VERSION} -t flatpak/flatpak-builder:kde-$(subst .,-,${KDE_VERSION}) .
