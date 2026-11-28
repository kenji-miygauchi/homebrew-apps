cask "whisper-local" do
  version "0.3.29"
  sha256 "23a27024e3122a9068a8a019a4805d1bb068ee4a2727a54879fe911f66f2004d"

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
