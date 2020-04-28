FROM fedora:32
VOLUME /build
WORKDIR /build
ENV FLATPAK_GL_DRIVERS=dummy
RUN dnf -y update && dnf install -y flatpak-builder ostree fuse elfutils dconf git bzr && dnf clean all
RUN flatpak remote-add flathub https://dl.flathub.org/repo/flathub.flatpakrepo
