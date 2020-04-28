# Docker images for flatpak builder

## Run

    docker run -it --rm \
      --name flatpak-builder \
      --privileged \
      -v /path/to/project:/build \
      flatpak/flatpak-builder:freedesktop-19.08 \
      flatpak-builder --disable-rofiles-fuse --disable-cache --force-clean --repo="$FLATPAK_REPO" "$FLATPAK_BUILD_FOLDER" "$FLATPAK_JSON_FILE".json;
