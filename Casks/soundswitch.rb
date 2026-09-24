cask "soundswitch" do
  version "0.4.0"
  sha256 "634ca86e97725803e24c31046ea139cef230406f26ba426fff18a2c518cc9ad4"

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
