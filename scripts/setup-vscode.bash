#/usr/bin/sh 
set -ex

### link ### 

VSCODE_SETTING_DIR=""
if [ "$(uname)" == "Darwin" ]; then
    VSCODE_SETTING_DIR="$HOME/Library/Application Support/Code/User"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    VSCODE_SETTING_DIR="$HOME/.config/Code/User"
else
    echo "Unknown OS"
    echo "$(uname)"
    exit 1
fi

ln -sfv "$XDG_CONFIG_HOME/vscode/settings.json" "$VSCODE_SETTING_DIR/settings.json"


### extensions ###

code --install-extension redhat.vscode-commons
code --install-extension MS-CEINTL.vscode-language-pack-ja

# Drawio
code --install-extension hediet.vscode-drawio

# Marp
code --install-extension marp-team.marp-vscode

# Latex
code --install-extension James-Yu.latex-workshop

# Python
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance

# Cpp
code --install-extension ms-vscode.cpptools
code --install-extension ms-vscode.cpptools-themes
code --install-extension jeff-hykin.better-cpp-syntax

# Go
code --install-extension golang.go

# Rust
code --install-extension rust-lang.rust
code --install-extension rust-lang.rust-analyzer

# Remote
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension ms-vscode-remote.remote-wsl
