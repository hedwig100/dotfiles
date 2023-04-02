# dotfiles

## Setup
```
curl -sL https://raw.githubusercontent.com/hedwig100/dotfiles/main/install.sh | sh
```

## インストールを行うもの

### On WSL

1. `apt` でパッケージをインストールする.
    - 割と最小限なもののみインストールする. 必要ならあとで自分でインストールする.
2. シンボリックリンクを張る
3. `deno` のインストールをする.
4. `zinit` (zshのプラグインマネージャ) をインストールする. 
5. `asdf` をインストールする.

- ghqもなんか今は手動でインストールするようになっている. asdfでインストールする.
- vscodeはwindows側に入れたほうがいいため, 手動でインストールすることを推奨. 設定は
`vscode/extensions.sh` にあるため, これを実行すれば拡張機能がインストールされる.
`vscode/settings.json` へのシンボリックリンクを張るのもやったほうがいい. 

### On Mac

WIP...

## 設定されるもの
1. `XDG_DATA_HOME, XDG_CONFIG_HOME` など
    - 設定ファイルや, 実行ファイルなどを `$HOME` ではなくこれらのディレクトリで管理する. 
2. `zsh`, `zeno` などシェルの設定
    - historyからのコマンドの補完や, `zeno` で設定した接頭辞に一致するようなコマンドの補完などを行ってくれるようになる.
3. Go, Rust, Poetryなどの環境変数の設定
    - 環境変数のみの設定でインストールは行わない.
    - TODO: インストールの仕方を書くか, インストールするようにする.
    - Go, Python,... はasdfでのインストールを推奨する.
4. gitの設定
    - localな設定で書かないといけないことはたぶんあるのでなんか見たほうがいい.
    - ssh-keyも作ると良い.
5. latexmk
    - 設定のみでインストールはしない(時間がかかるため)
