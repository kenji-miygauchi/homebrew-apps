cask "icrec" do
  version "0.1.73"
  sha256 "858d0d81a8016bc5e91f11c6c34355dfbb7aa8df49decb084e4a06852ca16895"

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
