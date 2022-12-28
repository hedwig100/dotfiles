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
    wget \
    zip \
    zsh 
