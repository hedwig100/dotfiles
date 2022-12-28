# dotfiles

## Setup
```
curl -sL https://raw.githubusercontent.com/hedwig100/dotfiles/main/install.sh | sh
```

## WSL

- vscodeのインストールはwindows上で行い, remote wslで操作する方がよいため, vscodeのインストールは手動で行い, vscodeの設定ファイルへのパスを適切に変えてから `bash /scripts/setup-vscode.bash` で拡張機能を入れる. settings.jsonはwindowsのほうにあるので手動で設定することにする

### インストールを行うもの

- zsh
- homebrew
- apt
- git
- asdf

## TODO

1. 方針

- zshを使用
- zinitをプラグインマネージャに使用

2. やりたいこと

- ほかの言語, ツールの設定も行う. 
    - docker
    - c++
    - python
    - go
    - rust