cask "aimccap" do
  version "0.3.0"
  sha256 "76892aee8095eb81c443c9aec98d8e0824e6d29bf11a965aff64cfe1658b936b"

  url "https://k386.sub.jp/shared/api/dl.php?app=aimccap&file=AIMCCap-#{version}.dmg"
  name "AIMCCap"
  desc "Save SwitchBot AI MindClip cloud recordings to a local folder"
  homepage "https://k386.sub.jp/AIMCCap/"

  livecheck do
    url "https://k386.sub.jp/AIMCCap/api/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "AIMCCap.app"

  zap trash: [
    "~/Library/Application Support/AIMCCap",
    "~/Library/Preferences/jp.sub.k386.aimccap.plist",
  ]
end
