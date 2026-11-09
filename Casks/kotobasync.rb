cask "kotobasync" do
  version "1.2.74"
  sha256 "fecf25baf08709b42b02d7e1a7267fe697de4fd7aecfa65f8c74405c616a9a8b"

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
