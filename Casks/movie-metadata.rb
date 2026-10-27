cask "movie-metadata" do
  version "0.2.1"
  sha256 "58ac5587a1f48202fdbaace5533fd82d89b658ea44c2b548cd1bb0274f52ecb7"

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
