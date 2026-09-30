cask "soundswitch" do
  version "0.4.3"
  sha256 "b2458a3df536a0f9954f4495982c6c312589f9a66adfe76cd8dc33a129025aa0"

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
