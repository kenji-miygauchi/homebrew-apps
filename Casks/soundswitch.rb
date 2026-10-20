cask "soundswitch" do
  version "0.6.0"
  sha256 "cf3f9d8a94d170c6d31f1d2502b7710a0b91e20b8e1dcb010dcef92114a5a1c0"

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
