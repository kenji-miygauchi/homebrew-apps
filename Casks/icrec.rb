cask "icrec" do
  version "0.1.70"
  sha256 "f0b0a082b6e7a44c0e878bf09a3c4be6ea940d8a85ec08311ca56790f1c45efb"

  url "https://k386.sub.jp/shared/api/dl.php?app=icrec&file=icRec-#{version}.dmg"
  name "icRec"
  desc "Import, transcribe, summarize and search voice recordings"
  homepage "https://k386.sub.jp/icRec/"

  livecheck do
    url "https://k386.sub.jp/icRec/api/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :sonoma

  app "icRec.app"
end
