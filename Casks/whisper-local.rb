cask "whisper-local" do
  version "0.3.14"
  sha256 "c2f2df51f45f3ba4fd1b1a3dc7536f47abee7713c7371d378097e3a88291096a"

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
