FROM gitpod/workspace-full-vnc:latest

USER root
# Install custom tools, runtime, etc.
RUN apt-get update \
    && apt-get install -y libgtk-3-dev libwebkit2gtk-4.0-dev \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
