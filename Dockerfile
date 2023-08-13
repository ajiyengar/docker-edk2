FROM ghcr.io/tianocore/containers/ubuntu-22-dev AS edk2-ubuntu-22-dev-aj

# Suppresses a debconf error during apt-get install.
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install --yes --no-install-recommends \
        file \
        silversearcher-ag \
        fzf \
        tmux \
        fd-find \
        highlight \
        bat

RUN sed -i '/\sexec \"/ aelif [ "$1" = "login" ]; then\n  exec runuser -l "${EDK2_DOCKER_USER}"' /usr/libexec/entrypoint
RUN ln /usr/bin/fdfind /usr/bin/fd
