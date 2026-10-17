cask "picklio" do
  version "0.6.1"
  sha256 "ea97af4e2efd57682dc301e7f3f2c1dc332001c53e28b04662e5b27db933e8ac"

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
