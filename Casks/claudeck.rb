cask "claudeck" do
  version "2.0.3"
  sha256 "fcf71b4a2e7de7cc63e1029190cc7823150128cd8a65efe428613a34dfb516c6"

  url "https://k386.sub.jp/shared/api/dl.php?app=claudeck&file=ClauDeck-#{version}.dmg"
  name "ClauDeck"
  desc "Approve Claude Code and Codex requests with Stream Deck keys"
  homepage "https://k386.sub.jp/ClauDeck/"

  livecheck do
    url "https://k386.sub.jp/ClauDeck/api/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "ClauDeck.app"
end
