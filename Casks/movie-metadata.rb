cask "movie-metadata" do
  version "0.2.0"
  sha256 "953e86b8293c8138a9ff191d8a3c043372ef304904031719e210411c37364776"

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
