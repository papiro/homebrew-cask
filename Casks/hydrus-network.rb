cask "hydrus-network" do
  version "478"
  sha256 "e41f153877f0d5e530785889fcfdae4af5ee447ddb2d9dfc8f008773152c60ba"

  url "https://github.com/hydrusnetwork/hydrus/releases/download/v#{version}/Hydrus.Network.#{version}.-.macOS.-.App.dmg",
      verified: "github.com/hydrusnetwork/hydrus/"
  name "hydrus-network"
  desc "Personal booru-style media tagger to organize your media"
  homepage "https://hydrusnetwork.github.io/hydrus/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/tag/v?(\d+\h*)["' >]}i)
  end

  app "Hydrus Network.app"

  zap trash: "~/Library/Hydrus/"
end
