cask "soundswitch" do
  version "0.4.2"
  sha256 "0becc32bcf8593c4bf42b29091b7902db8e16efe6fb950256463878ae26b00ce"

  url "https://k386.sub.jp/shared/api/dl.php?app=soundswitch&file=SoundSwitch-#{version}.dmg"
  name "SoundSwitch"
  desc "Switch audio output and input devices from the menu bar or a shortcut"
  homepage "https://k386.sub.jp/SoundSwitch/"

  livecheck do
    url "https://k386.sub.jp/SoundSwitch/api/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :sonoma

  app "SoundSwitch.app"
end
