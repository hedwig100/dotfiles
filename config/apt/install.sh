#!/bin/sh
set -e

apt-get update
apt-get upgrade -y
apt-get install -y \
    git \
    build-essential \
    zlib1g \
    zlib1g-dev \
    libssl-dev \
    libffi-dev \
    libbz2-dev \
    libreadline-dev\
    libsqlite3-dev \
    libncursesw5-dev \
    tk-dev \
    liblzma-dev \
    wget \
    zip \
    zsh 
