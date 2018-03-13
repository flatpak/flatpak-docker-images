FROM fedora:27
MAINTAINER Alexander Larsson <alexl@redhat.com>
VOLUME /build
WORKDIR /build
RUN dnf -y update && dnf install -y flatpak-builder ostree rofiles-fuse elfutils && dnf clean all
RUN flatpak remote-add flathub https://dl.flathub.org/repo/flathub.flatpakrepo
RUN flatpak remote install flathub org.freedesktop.Sdk//1.6 org.freedesktop.Platform//1.6
