cask "mouse-halo" do
  version "0.2.3"
  sha256 "249127442be36a1ba142afb6f55d5614e93dd9b20f8fb18b63d7fdd7ff9a669f"

  url "https://k386.sub.jp/shared/api/dl.php?app=mousehalo&file=Mouse-Halo-#{version}.dmg"
  name "Mouse Halo"
  desc "Draws a glowing ring around the mouse pointer"
  homepage "https://k386.sub.jp/MouseHalo/"

  livecheck do
    url "https://k386.sub.jp/MouseHalo/api/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Mouse Halo.app"
end
