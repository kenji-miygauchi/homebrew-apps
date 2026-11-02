cask "movie-metadata" do
  version "0.2.3"
  sha256 "e6a7a20d87ca3bb1d24e5f0b59c2578f5de5c5c664be545043383cf56ec29bed"

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
