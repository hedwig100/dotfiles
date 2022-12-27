#!/bin/sh
set -e

apt-get update
apt-get upgrade -y
apt-get install -y \
    git \
    wget \
    zip \
    zsh 
