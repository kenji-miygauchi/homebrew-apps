cask "mouse-halo" do
  version "0.2.4"
  sha256 "6605fb0556c9700fe9f659b24bf632ec25e44190af03605d04eb8e7835cc1ea4"

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
