FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install packages
# libpcre3-dev is needed if you wish to use ameba
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    curl \
    libpcre3-dev \
    && rm -rf /var/lib/apt/lists/*

# Install Crystal
RUN curl -fsSL https://crystal-lang.org/install.sh | bash

# Switch to vscode user
USER vscode
WORKDIR /workspaces
