cask "refocus" do
  version "1.01"
  sha256 "601cd4ea28076b8d2f867b39adb95ade359e9986a8ffc8409c81f084a46f8129"

  url "https://k386.sub.jp/shared/api/dl.php?app=refocus&file=Refocus.dmg"
  name "Refocus"
  desc "Menu bar timer that reminds you to rest your eyes every 20 minutes"
  homepage "https://k386.sub.jp/Refocus/"

  livecheck do
    url "https://k386.sub.jp/Refocus/api/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on :macos

  app "Refocus.app"
end
