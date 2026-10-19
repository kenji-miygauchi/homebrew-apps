cask "picklio" do
  version "0.6.8"
  sha256 "e519c7659fdbaeb4f24d7bfb5354e787c21ecfd0ca0d9f5236808be0f2e0a190"

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
