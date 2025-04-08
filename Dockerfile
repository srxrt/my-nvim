# Dockerfile
FROM debian:bookworm-slim

# Install dependencies
RUN apt-get update && apt-get install -y \
  curl \
  tar \
  git \
  ca-certificates \
  && rm -rf /var/lib/apt/lists/*

# Install Neovim v0.11.0
RUN curl -LO https://github.com/neovim/neovim/releases/download/v0.11.0/nvim-linux-x86_64.tar.gz \
  && tar xzvf nvim-linux-x86_64.tar.gz \
  && mv nvim-linux-x86_64 /opt/nvim \
  && ln -s /opt/nvim/bin/nvim /usr/local/bin/nvim \
  && rm nvim-linux-x86_64.tar.gz
