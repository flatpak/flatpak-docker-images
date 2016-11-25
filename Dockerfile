FROM fedora:25
MAINTAINER Alexander Larsson <alexl@redhat.com>
RUN dnf -y update && dnf install -y flatpak-builder ostree && dnf clean all
