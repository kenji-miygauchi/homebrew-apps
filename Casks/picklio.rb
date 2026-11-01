cask "picklio" do
  version "0.8.0"
  sha256 "150801417ac8207da2079bc88ba55311d9d5c866a0b85369c84e4d47f0dc8e5d"

  url "https://k386.sub.jp/shared/api/dl.php?app=picklio&file=Picklio-#{version}.dmg"
  name "Picklio"
  desc "Watch and listen to YouTube, YouTube Music, TVer, ABEMA and radiko"
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
