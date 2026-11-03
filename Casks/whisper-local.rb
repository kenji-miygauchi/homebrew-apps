cask "whisper-local" do
  version "0.3.27"
  sha256 "1447b55de86124402c1e8003c8a9c6d49feb74a34d2e62c4ff8d51ca895ffb7a"

  url "https://k386.sub.jp/shared/api/dl.php?app=whisper&file=Whisper-Local-#{version}.dmg"
  name "Whisper Local"
  desc "Offline speech-to-text for audio and video files"
  homepage "https://k386.sub.jp/whisper/"

  livecheck do
    url "https://k386.sub.jp/whisper/api/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Whisper Local.app"
end
