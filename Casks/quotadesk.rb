cask "quotadesk" do
  version "0.2.3"
  sha256 "5aa7bd786df1fbd3898ba3ad92224e2ce6be872c3d007c9a15c55acb17c9bcad"

  url "https://k386.sub.jp/shared/api/dl.php?app=quotadesk&file=QuotaDesk-#{version}.dmg"
  name "Quota Desk"
  desc "Widget showing remaining Codex, Claude and Antigravity usage limits"
  homepage "https://k386.sub.jp/QuotaDesk/"

  livecheck do
    url "https://k386.sub.jp/QuotaDesk/api/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Quota Desk.app"
end
