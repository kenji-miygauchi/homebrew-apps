cask "honyaku" do
  version "0.3.1"
  sha256 "e891faba65eb2a28cd7298cfb060a0ce0c1a266282a49c3e10afa39666346349"

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
