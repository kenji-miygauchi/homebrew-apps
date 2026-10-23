cask "icrec" do
  version "0.1.76"
  sha256 "1a7e3e437f6266b69a79bb3d43ab4cd4d4f4d1632b769b12b11a63b5d0847de1"

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
