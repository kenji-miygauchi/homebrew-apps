cask "honyaku" do
  version "0.3.4"
  sha256 "2e197df6a6bbc9bf7621ee5933281d500456186b757f23e497f1c611ca1d138d"

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
