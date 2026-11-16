cask "movie-metadata" do
  version "0.2.5"
  sha256 "83b37fefaeb3ffba65861ed75a694cd888c704d04d4e347ead5d457aa9938f36"

  url "https://k386.sub.jp/shared/api/dl.php?app=moviemetadata&file=MovieMetadata-#{version}.dmg"
  name "Movie Metadata"
  desc "Find film details from a video's file name and write them into an MP4"
  homepage "https://k386.sub.jp/MovieMetadata/"

  livecheck do
    url "https://k386.sub.jp/MovieMetadata/api/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Movie Metadata.app"

  zap trash: "~/Library/Preferences/jp.sub.k386.moviemetadata.plist"
end
