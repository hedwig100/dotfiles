
### XDG ###
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

### zsh ###
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

### local setting ###
if [ -e "$ZDOTDIR/local.env" ]; then
    source "$ZDOTDIR/local.env"
fi

### Deno ### 
export DENO_INSTALL="$XDG_DATA_HOME/deno"
export PATH="$DENO_INSTALL/bin:$PATH"

### navi ###
export NAVI_CONFIG="$XDG_CONFIG_HOME/navi/config.yaml"

### Go ###
export GO111MODULE=on
if type go >/dev/null; then
    export PATH="$PATH:$(go env GOPATH)/bin"
fi