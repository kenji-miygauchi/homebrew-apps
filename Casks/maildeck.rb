cask "maildeck" do
  version "1.3.4"
  sha256 "50e9f0c6169b56dea4bd95ee140bebb04bd5c00535cea0543fb9aab399d8584f"

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
