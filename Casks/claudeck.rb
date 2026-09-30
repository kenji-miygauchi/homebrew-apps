cask "claudeck" do
  version "2.0.2"
  sha256 "53bba340dd33543739a8d055fb4967d807282b980d53129a76e18136737aa850"

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
