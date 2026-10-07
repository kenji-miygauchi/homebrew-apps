cask "soundswitch" do
  version "0.5.0"
  sha256 "5a061da2ecf0fd6fdc6f3c9ab420f7b4933832137bb3514c29884205dbd6f0f2"

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
