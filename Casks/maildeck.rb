cask "maildeck" do
  version "1.3.1"
  sha256 "d6980b40bfb955ef061f4f311a31f659749ede930edff523521b82bcdab1d0c7"

  url "https://k386.sub.jp/shared/api/dl.php?app=maildeck&file=MailDeck-#{version}.dmg"
  name "MailDeck"
  desc "Use several Google accounts (Gmail, Calendar, Keep) side by side"
  homepage "https://k386.sub.jp/MailDeck/"

  livecheck do
    url "https://k386.sub.jp/MailDeck/api/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MailDeck.app"
end
