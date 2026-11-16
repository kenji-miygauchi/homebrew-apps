cask "quotadesk" do
  version "0.2.6"
  sha256 "3d30f60849fe462e8e022519ead0afa2aca4e067f86e3c50315eb77b12fa73b3"

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
