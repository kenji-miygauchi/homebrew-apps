cask "maildeck" do
  version "1.3.3"
  sha256 "4fab7e2f0fa0e60ad6b1605be673431a896d51cf9f988136429dd0776301c3f3"

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
