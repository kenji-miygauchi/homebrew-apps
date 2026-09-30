# K386 Apps — Homebrew tap

macOS 用の無料アプリ [K386 Apps](https://k386.sub.jp/) を Homebrew で入れるための tap です。

```sh
brew tap kenji-miygauchi/apps
brew install --cask whisper-local
```

| cask | アプリ | 対応 |
|---|---|---|
| `claudeck` | [ClauDeck](https://k386.sub.jp/ClauDeck/) — Claude Code・Codex の承認を Stream Deck のキーで | macOS 13+・Apple シリコン |
| `maildeck` | [MailDeck](https://k386.sub.jp/MailDeck/) — 複数の Google アカウントを同時に | macOS 13+・Apple シリコン |
| `icrec` | [icRec](https://k386.sub.jp/icRec/) — 録音の取り込み・文字起こし・整理 | macOS 14+ |
| `whisper-local` | [Whisper Local](https://k386.sub.jp/whisper/) — Mac の中だけで文字起こし | macOS 14+・Apple シリコン |
| `soundswitch` | [SoundSwitch](https://k386.sub.jp/SoundSwitch/) — スピーカー・マイクの切り替え | macOS 14+ |
| `refocus` | [Refocus](https://k386.sub.jp/Refocus/) — 20 分ごとの目の休憩タイマー | macOS 12+ |

Quota Desk は、配布ページで利用規約に同意してからダウンロードする仕組みのため、ここには入れていません。

どのアプリも Apple の公証を受けた DMG を、公式サイト（k386.sub.jp）から取得します。

## 更新のしかた（管理者向け）

アプリを公開したあと、サイトのフォルダーの `api/version.json` と DMG から版と SHA-256 を読み直します。

```sh
./update.sh            # 変わったものだけ書き換える
brew style Casks/*.rb  # 書き方の確認
```
