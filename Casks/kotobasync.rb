cask "kotobasync" do
  version "1.2.26"
  sha256 "9a451d4f498507bd41bfcc1ca601c267f6f76a743fd64455d4407fdff377e5a2"

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
