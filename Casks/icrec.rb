cask "icrec" do
  version "0.1.68"
  sha256 "428e4dd11098cfbe23ac51ad2c1a714d511fa51c306a408250449f167eb982f7"

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
