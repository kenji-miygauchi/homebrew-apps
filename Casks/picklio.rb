cask "picklio" do
  version "0.4.1"
  sha256 "55fbf26b56cc04838c26df92a29b44324e83e9d003fd11b28b664f5417fa4a18"

  url "https://k386.sub.jp/shared/api/dl.php?app=picklio&file=Picklio-#{version}.dmg"
  name "Picklio"
  desc "Save videos and songs from a link as MP4, MP3 or M4A"
  homepage "https://k386.sub.jp/Picklio/"

  livecheck do
    url "https://k386.sub.jp/Picklio/api/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Picklio.app"

  zap trash: [
    "~/Library/Application Support/Picklio",
    "~/Library/Caches/jp.sub.k386.picklio",
    "~/Library/HTTPStorages/jp.sub.k386.picklio",
    "~/Library/Preferences/jp.sub.k386.picklio.plist",
    "~/Library/WebKit/jp.sub.k386.picklio",
  ]
end
