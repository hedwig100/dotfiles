#!/usr/bin/env bash
set -x
# shellcheck source=./scripts/common.bash
source "$(dirname "$0")/common.bash"

mkdir -p \
    "$XDG_CONFIG_HOME" \
    "$XDG_STATE_HOME"

ln -sfv "$REPO_DIR/config/"* "$XDG_CONFIG_HOME"
ln -sfv "$XDG_CONFIG_HOME/zsh/.zshenv" "$HOME/.zshenv"
ln -sfv "$XDG_CONFIG_HOME/zsh/.zshrc" "$HOME/.zshrc"
ln -sfv "$XDG_CONFIG_HOME/zsh/.p10k.zsh" "$HOME/.p10k.zsh"