cask "claudeck" do
  version "2.0"
  sha256 "2861039d0cd579e4427012295abfa23237965da6b7eaa88541b93b9b438f95fb"

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
