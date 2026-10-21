cask "kotobasync" do
  version "1.2.36"
  sha256 "54757d9c50eca7ec2164afc5cc4345d7de39d7db956bf56d509572f4a0a62b98"

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
