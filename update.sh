#!/bin/bash
# 各アプリの version.json と DMG から、Casks/*.rb の version と sha256 を書き換える。
set -euo pipefail
cd "$(dirname "$0")"
SITE=/Users/duca/dev/htdocs/k386.sub.jp
while read -r cask dir pattern; do
  f="Casks/$cask.rb"
  v=$(python3 -c "import json;print(json.load(open('$SITE/$dir/api/version.json'))['version'])")
  file=${pattern//VERSION/$v}
  dmg="$SITE/$dir/downloads/$file"
  [ -f "$dmg" ] || { echo "見つかりません: $dmg"; continue; }
  sha=$(shasum -a 256 "$dmg" | cut -c1-64)
  old=$(grep -m1 'version "' "$f" | cut -d'"' -f2)
  sed -i '' -E "s/^  version \".*\"/  version \"$v\"/; s/^  sha256 \".*\"/  sha256 \"$sha\"/" "$f"
  [ "$old" = "$v" ] && echo "同じ   $cask $v" || echo "更新   $cask $old → $v"
done <<LIST
claudeck ClauDeck ClauDeck-VERSION.dmg
maildeck MailDeck MailDeck-VERSION.dmg
icrec icRec icRec-VERSION.dmg
whisper-local whisper Whisper-Local-VERSION.dmg
soundswitch SoundSwitch SoundSwitch-VERSION.dmg
refocus Refocus Refocus.dmg
quotadesk QuotaDesk QuotaDesk-VERSION.dmg
mouse-halo MouseHalo Mouse-Halo-VERSION.dmg
honyaku Honyaku Honyaku-VERSION.dmg
kotobasync KotobaSync KotobaSync-VERSION.dmg
LIST
