cask "kotobasync" do
  version "1.2.65"
  sha256 "66484e487cd795d159f2649f7d9c7266326ae3beee4575724140ecbdbda8bd37"

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
