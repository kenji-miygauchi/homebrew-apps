cask "quotadesk" do
  version "0.2.4"
  sha256 "29ed5e76bf59a4325cc4c543bec33d874955900bb756089e1713a9b4b7ab5f0e"

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
