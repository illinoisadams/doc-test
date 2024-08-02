# Copyright 2024 The Board of Trustees of the University of Illinois
# 
# The resulting docker image will allow one to run
# the mrnesbits beta demonstration.
#
# Usage:
#   ...
#

# Production phase
FROM debian:bookworm
# RUN apt update && apt upgrade -y && apt install -y vim
WORKDIR /app
COPY . .
LABEL org.opencontainers.image.source https://github.com/illinoisadeams/doc-test
