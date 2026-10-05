cask "kotobasync" do
  version "1.2.1"
  sha256 "29ca6c98c456099b9aec4540c68731902374bebab7c22cce1a43ed9a6a9f1c6d"

  url "https://k386.sub.jp/shared/api/dl.php?app=kotobasync&file=KotobaSync-#{version}.dmg"
  name "ことばシンク"
  name "KotobaSync"
  desc "Transcribe videos and translate the subtitles into Japanese"
  homepage "https://k386.sub.jp/KotobaSync/"

  livecheck do
    url "https://k386.sub.jp/KotobaSync/api/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "ことばシンク.app"

  zap trash: [
    "~/Library/Application Support/SubtitleStudio",
    "~/Library/Caches/SubtitleStudio",
    "~/Library/Preferences/com.subtitle.studio.plist",
  ]
end
