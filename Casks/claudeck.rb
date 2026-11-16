cask "claudeck" do
  version "2.0.4"
  sha256 "05ce82cb5b69e72398172333c4544c57256fc1fd161ecb40394292f75bda9c7b"

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
