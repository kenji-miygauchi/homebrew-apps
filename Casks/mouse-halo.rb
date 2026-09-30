cask "mouse-halo" do
  version "0.2.2"
  sha256 "73a50b916f2d05f2c345d87ea26b57e582061b67ec8dc2bf07163eb5c8b2be66"

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
