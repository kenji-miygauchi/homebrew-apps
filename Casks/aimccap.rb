cask "aimccap" do
  version "0.3.1"
  sha256 "5a42ba8cebe361443ad4846f7e9f41928aac0f8062c06e25bafb128a8e41ed0c"

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
