cask "honyaku" do
  version "0.3.3"
  sha256 "157e70d63ed8389163f0297e5af0a066ca2f19ac21e0833237b58850e3572e53"

  url "https://k386.sub.jp/shared/api/dl.php?app=honyaku&file=Honyaku-#{version}.dmg"
  name "Honyaku"
  desc "Menu bar translator for selected text and screen areas"
  homepage "https://k386.sub.jp/Honyaku/"

  livecheck do
    url "https://k386.sub.jp/Honyaku/api/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Honyaku.app"
end
