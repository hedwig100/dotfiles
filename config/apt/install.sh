#!/bin/sh
set -e

apt-get update
apt-get upgrade -y
apt-get install -y \
    git \
    python3 \
    wget \
    zip \
    zsh 
