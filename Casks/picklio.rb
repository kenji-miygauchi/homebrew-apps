cask "picklio" do
  version "0.7.3"
  sha256 "fa60496610aaceb8308a63b857038ae9229a067de80c822cc0dc2e8e2363a84e"

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
