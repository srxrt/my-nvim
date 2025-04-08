# Dockerfile
FROM debian:bookworm-slim

RUN apt-get update && \
  apt-get install -y neovim git curl && \
  apt-get clean && rm -rf /var/lib/apt/lists/*

