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
else
    echo "Other than MAC"
    echo "$(uname)"
fi

if [ -n "$VSCODE_SETTING_DIR" ]; then ## mac以外ではsettings.jsonは手動で配置する
    ln -sfv "$XDG_CONFIG_HOME/vscode/settings.json" "$VSCODE_SETTING_DIR/settings.json"
fi

bash "$REPO_DIR/config/vscode/extensions.sh"
