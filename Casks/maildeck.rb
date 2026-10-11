cask "maildeck" do
  version "1.3.5"
  sha256 "facd06759a40e4000a652ad4d29a637bff37514578fc143135efb3bbf8d63e0b"

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
