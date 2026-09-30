cask "honyaku" do
  version "0.3.2"
  sha256 "9001d320a0b05af8bfcc61dfa9a36406172214d1936c6dd416d6fb7d673493dc"

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
