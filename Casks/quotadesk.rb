cask "quotadesk" do
  version "0.2.5"
  sha256 "fb283d285a1bb9a7123e148e8830f31c495cda018d57f300fd6f21ccf2fab6f0"

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
