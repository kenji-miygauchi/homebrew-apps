cask "whisper-local" do
  version "0.3.24"
  sha256 "4d60739af0b69cb907bf600591d1f73ca30bba481ff85accab7ebcb5dc600654"

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
