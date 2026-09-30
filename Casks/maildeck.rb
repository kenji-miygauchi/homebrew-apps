cask "maildeck" do
  version "1.3.2"
  sha256 "7f6f7c52b856ad49a042274744abef92a90910331f400d507019afd0f07773bd"

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
