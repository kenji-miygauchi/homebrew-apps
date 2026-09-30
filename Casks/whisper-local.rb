cask "whisper-local" do
  version "0.3.17"
  sha256 "7526b95625a6af243fc1e620a44f1cd9169eaf1cb86889d89fd2db89d8b2b33c"

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
