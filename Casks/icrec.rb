cask "icrec" do
  version "0.1.75"
  sha256 "8c6718b70e0ed3f88e12ceb61ab183e47532230adb8045a096c9aff86e982e43"

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
