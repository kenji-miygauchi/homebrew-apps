cask "refocus" do
  version "1.03"
  sha256 "c1def9d2b83c45d8043d63acf62040ed9d34719d9f4078cfb9374e27081b36c9"

  url "https://k386.sub.jp/shared/api/dl.php?app=refocus&file=Refocus.dmg"
  name "Refocus"
  desc "Menu bar timer that reminds you to rest your eyes every 20 minutes"
  homepage "https://k386.sub.jp/Refocus/"

  livecheck do
    url "https://k386.sub.jp/Refocus/api/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :monterey

  app "Refocus.app"
end
