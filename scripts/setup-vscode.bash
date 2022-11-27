#/usr/bin/sh 
set -ex

if type code>/dev/null; then
    echo "Visual Studio Code is installed. Start to configure vscode ..."
else
    exit 0 
fi

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
bash "$REPO_DIR/config/vscode/extensions.sh"
